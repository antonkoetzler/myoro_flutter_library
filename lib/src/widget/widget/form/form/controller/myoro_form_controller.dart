import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroForm].
class MyoroFormController<T> extends MyoroRequestController<T> {
  MyoroFormController({this.configuration}) : super(requestCallback: configuration?.request) {
    addListener(_listener);
  }

  /// Configuration.
  final MyoroFormConfiguration<T>? configuration;

  /// [GlobalKey] of the [Form].
  final formKey = GlobalKey<FormState>();

  /// Starts the form process.
  @override
  Future<void> fetch() async {
    value = request.createLoadingState();

    // Validation function passed in [MyoroForm].
    final String? validationErrorMessage = configuration?.validation?.call();

    // Flutter's [Form] validation call, this will check validation functions
    // in, for example, a [MyoroInput] with [MyoroInput.validation] provided.
    final bool formKeyValidation = formKey.currentState?.validate() ?? true;

    if (validationErrorMessage != null || !formKeyValidation) {
      value = request.createErrorState(!formKeyValidation ? 'Form not completed.' : validationErrorMessage!);
      return;
    }

    await super.fetch();
  }

  /// [MyoroFormController] listener.
  void _listener() {
    if (status.isSuccess) {
      configuration?.onSuccess?.call(data);
    }
    if (status.isError) {
      configuration?.onError?.call(errorMessage!);
    }
  }
}
