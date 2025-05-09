import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_form_bloc/myoro_form_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base form widget. Should always be used for any type of form content.
class MyoroForm<T> extends StatefulWidget {
  /// Configuration.
  final MyoroFormConfiguration<T> configuration;

  const MyoroForm({super.key, required this.configuration});

  @override
  State<MyoroForm<T>> createState() => _MyoroFormState<T>();
}

final class _MyoroFormState<T> extends State<MyoroForm<T>> {
  MyoroFormConfiguration<T> get _configuration => widget.configuration;

  MyoroFormController? _localController;
  MyoroFormController get _controller {
    return _configuration.controller ?? (_localController ??= MyoroFormController());
  }

  final _key = GlobalKey<FormState>();
  late final MyoroFormBloc _bloc;

  void _blocListener(MyoroFormState state) {
    if (state.status.isSuccess) {
      _configuration.onSuccess?.call(state.result);
    }
    if (state.status.isError) {
      _configuration.onError?.call(state.errorMessage!);
    }
  }

  @override
  void initState() {
    super.initState();
    _bloc = MyoroFormBloc(_key, _configuration.validation, _configuration.request);
    _controller.bloc = _bloc;
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocConsumer<MyoroFormBloc, MyoroFormState>(
        listener: (_, MyoroFormState state) => _blocListener(state),
        builder: (_, MyoroFormState state) {
          return Form(key: _key, child: _configuration.builder.call(state.result, state.status, _controller));
        },
      ),
    );
  }
}
