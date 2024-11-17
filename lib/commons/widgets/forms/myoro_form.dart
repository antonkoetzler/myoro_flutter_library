import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Validation function that is executed before [MyoroFormRequest].
typedef MyoroFormValidation = String? Function();

/// Request that will be executed after the form validation process is successful.
typedef MyoroFormRequest<T> = FutureOr<T> Function();

/// Function that is executed when the form process is completed successfully.
typedef MyoroFormOnSuccess<T> = Function(T? result);

/// Function that is executed when the form process is completed unsuccessfully.
typedef MyoroFormOnError = Function(String errorMessage);

/// Builder of the content within the form.
///
/// Contains controller so you don't need to create one & the status of the form execution.
typedef MyoroFormBuilder<T> = Function(T? result, MyoroRequestEnum status, MyoroFormController controller);

/// Base form widget. Should always be used for any type of form content.
final class MyoroForm<T> extends StatefulWidget {
  /// Controller in the case that the controller needs to be used outside of [builder]'s scope.
  final MyoroFormController? controller;

  /// Validation function of [MyoroForm].
  ///
  /// If unsuccessful, a [String] of the error message is returned. If successful, returns [null].
  final MyoroFormValidation? validation;

  /// Request that is executed after during the form process.
  final MyoroFormRequest<T>? request;

  /// Executed when the form is completed successfully.
  final MyoroFormOnSuccess<T>? onSuccess;

  /// Executed when the form is completed unsuccessfully.
  final MyoroFormOnError? onError;

  /// Builder of the content within the form.
  final MyoroFormBuilder builder;

  const MyoroForm({
    super.key,
    this.controller,
    this.validation,
    this.request,
    this.onSuccess,
    this.onError,
    required this.builder,
  });

  @override
  State<MyoroForm<T>> createState() => _MyoroFormState<T>();
}

final class _MyoroFormState<T> extends State<MyoroForm<T>> {
  MyoroFormRequest<T>? get _request => widget.request;
  MyoroFormValidation? get _validation => widget.validation;
  MyoroFormOnSuccess<T>? get _onSuccess => widget.onSuccess;
  MyoroFormOnError? get _onError => widget.onError;
  MyoroFormBuilder get _builder => widget.builder;

  MyoroFormController? _localController;
  MyoroFormController get _controller {
    return widget.controller ?? (_localController ??= MyoroFormController());
  }

  final _key = GlobalKey<FormState>();
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
    _bloc = MyoroFormBloc(_key, _validation, _request);
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
          return Form(
            key: _key,
            child: _builder.call(
              state.result,
              state.status,
              _controller,
            ),
          );
        },
      ),
    );
  }
}
