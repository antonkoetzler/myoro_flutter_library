import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_resolver_bloc/myoro_resolver_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget used to make any kind of asyncronous request with having to create a BloC.
class MyoroResolver<T> extends StatefulWidget {
  /// Configuration.
  final MyoroResolverConfiguration<T> configuration;

  const MyoroResolver(this.configuration, {super.key});

  @override
  State<MyoroResolver<T>> createState() => _MyoroResolverState<T>();
}

final class _MyoroResolverState<T> extends State<MyoroResolver<T>> {
  MyoroResolverConfiguration<T> get _configuration => widget.configuration;

  MyoroResolverController? _localController;
  MyoroResolverController get _controller {
    return _configuration.controller ?? (_localController ??= MyoroResolverController());
  }

  late final MyoroResolverBloc<T> _bloc;

  void _blocListener(MyoroResolverState state) {
    if (state.status.isSuccess) {
      _configuration.onSuccess?.call(state.result);
    }
    if (state.status.isError) {
      _configuration.onError?.call(state.errorMessage!);
    }
  }

  void _supplyController() {
    _controller.bloc = _bloc;
  }

  @override
  void initState() {
    super.initState();
    _bloc = MyoroResolverBloc(_configuration.request)..add(const ExecuteRequestEvent());
    _supplyController();
  }

  @override
  void didUpdateWidget(covariant MyoroResolver<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _supplyController();
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
      child: BlocConsumer<MyoroResolverBloc<T>, MyoroResolverState<T>>(
        listener: (_, MyoroResolverState state) => _blocListener(state),
        builder: (_, MyoroResolverState state) {
          return _configuration.builder.call(state.result, state.status, state.errorMessage, _controller);
        },
      ),
    );
  }
}
