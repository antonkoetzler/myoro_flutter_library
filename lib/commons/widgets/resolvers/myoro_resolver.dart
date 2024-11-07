import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed to make the request.
typedef MyoroResolverRequest<T> = FutureOr<T> Function();

/// Function executed when the request is completed successfully.
typedef MyoroResolverOnSuccess<T> = Function(T? result);

/// Function executed when the request is completed unsuccessfully.
typedef MyoroResolverOnError = Function(String errorMessage);

/// [Widget] builder that provides:
/// 1. [result]: Result of your request;
/// 2. [status]: [RequestEnum] status of the request;
/// 3. [controller]: [MyoroResolverController] connected to this instance so you don't need to create your own.
typedef MyoroResolverBuilder<T> = Function(T? result, MyoroRequestEnum status, MyoroResolverController controller);

/// Widget used to make any kind of asyncronous request with having to create a BloC.
final class MyoroResolver<T> extends StatefulWidget {
  /// Controller in the case that the controller needs to be used outside of [builder]'s scope.
  final MyoroResolverController? controller;

  /// Called when the request is executed successfully.
  final MyoroResolverOnSuccess<T>? onSuccess;

  /// Called when the request is executed unsuccessfully.
  final MyoroResolverOnError? onError;

  /// Function that will execute the request.
  final MyoroResolverRequest<T> request;

  /// [Widget] builder that provides the [T] result, status, & [MyoroResolverController].
  final MyoroResolverBuilder<T> builder;

  const MyoroResolver({
    super.key,
    this.controller,
    this.onSuccess,
    this.onError,
    required this.request,
    required this.builder,
  });

  @override
  State<MyoroResolver<T>> createState() => _MyoroResolverState<T>();
}

final class _MyoroResolverState<T> extends State<MyoroResolver<T>> {
  MyoroResolverRequest<T> get _request => widget.request;
  MyoroResolverOnSuccess<T>? get _onSuccess => widget.onSuccess;
  MyoroResolverOnError? get _onError => widget.onError;
  MyoroResolverBuilder<T> get _builder => widget.builder;

  MyoroResolverController? _localController;
  MyoroResolverController get _controller {
    return widget.controller ?? (_localController ??= MyoroResolverController());
  }

  late final MyoroResolverBloc _bloc;

  void _blocListener(MyoroResolverState state) {
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
    _bloc = MyoroResolverBloc(_request);
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
      child: BlocConsumer<MyoroResolverBloc, MyoroResolverState>(
        listener: (_, MyoroResolverState state) => _blocListener(state),
        builder: (_, MyoroResolverState state) {
          return _builder.call(
            state.result,
            state.status,
            _controller,
          );
        },
      ),
    );
  }
}
