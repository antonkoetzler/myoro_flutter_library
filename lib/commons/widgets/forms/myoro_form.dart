// TODO: Validation with form key and inputs.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Request that will be executed after the form validation process is successful.
typedef MyoroFormRequest<T> = FutureOr<T> Function();

/// Function that is executed when the form process is completed successfully.
typedef MyoroFormOnSuccess<T> = Function(T? result);

/// Function that is executed when the form process is completed unsuccessfully.
typedef MyoroFormOnError = Function(String errorMessage);

/// Builder of the content within the form.
///
/// Contains controller so you don't need to create one & the status of the form execution.
typedef MyoroFormBuilder = Function(MyoroFormController controller, MyoroRequestEnum status);

/// Base form widget. Should always be used for any type of form content.
final class MyoroForm<T> extends StatefulWidget {
  /// Controller in the case that the controller needs to be used outside of [builder]'s scope.
  final MyoroFormController? controller;

  /// Executed when the form is completed successfully.
  final MyoroFormOnSuccess<T>? onSuccess;

  /// Executed when the form is completed unsuccessfully.
  final MyoroFormOnError? onError;

  /// Request that is executed after during the form process.
  final MyoroFormRequest<T> request;

  /// Builder of the content within the form.
  final MyoroFormBuilder builder;

  const MyoroForm({
    super.key,
    this.controller,
    required this.request,
    this.onSuccess,
    this.onError,
    required this.builder,
  });

  @override
  State<MyoroForm<T>> createState() => _MyoroFormState<T>();
}

final class _MyoroFormState<T> extends State<MyoroForm<T>> {
  MyoroFormRequest<T> get _request => widget.request;
  MyoroFormOnSuccess<T>? get _onSuccess => widget.onSuccess;
  MyoroFormOnError? get _onError => widget.onError;
  MyoroFormBuilder get _builder => widget.builder;

  MyoroFormController? _localController;
  MyoroFormController get _controller {
    return widget.controller ?? (_localController ??= MyoroFormController());
  }

  late final MyoroFormBloc _bloc;

  void _blocListener(MyoroFormState state) {
    if (state.status.isSuccess) {
      _onSuccess?.call(state.result);
    }
    if (state.status.isError) {
      _onError?.call(state.errorMessage!);
    }
  }

  @override
  void initState() {
    super.initState();
    _bloc = MyoroFormBloc(_request);
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
        builder: (_, MyoroFormState state) => _builder.call(_controller, state.status),
      ),
    );
  }
}
