import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroForm].
class MyoroFormController<T> extends MyoroRequestController<T> {
  /// Default constructor.
  MyoroFormController({this.validation, MyoroFormRequest<T>? request, this.onSuccess, this.onError}) : super(requestCallback: request) {
    addListener(_listener);
  }

  /// Validation function of [MyoroForm].
  final MyoroFormValidation? validation;

  /// Executed when the form is completed successfully.
  final MyoroFormOnSuccess<T>? onSuccess;

  /// Executed when the form is completed unsuccessfully.
  final MyoroFormOnError? onError;

  /// [GlobalKey] of the [Form].
  final _formKey = GlobalKey<FormState>();

  /// Starts the form process.
  @override
  Future<void> fetch() async {
    value = request.createLoadingState();

    // Validation function passed in [MyoroForm].
    final String validationErrorMessage = validation?.call() ?? kMyoroEmptyString;

    // Flutter's [Form] validation call, this will check validation functions
    // in, for example, a [MyoroInput] with [MyoroInput.validation] provided.
    final bool formKeyValidation = formKey.currentState?.validate() ?? true;

    if (validationErrorMessage.isNotEmpty || !formKeyValidation) {
      value = request.createErrorState(!formKeyValidation ? kMyoroEmptyString : validationErrorMessage);
      return;
    }

    await super.fetch();
  }

  /// [MyoroFormController] listener.
  void _listener() {
    if (status.isSuccess) {
      onSuccess?.call(data);
    }
    if (status.isError) {
      onError?.call(errorMessage!);
    }
  }

  /// [_formKey] getter.
  GlobalKey<FormState> get formKey {
    return _formKey;
  }
}
