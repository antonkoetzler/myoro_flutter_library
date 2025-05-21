import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroForm].
class MyoroFormController<T> extends MyoroRequestController<T> {
  /// Configuration.
  late MyoroFormConfiguration<T> _configuration;
  MyoroFormConfiguration<T> get configuration => _configuration;
  set configuration(MyoroFormConfiguration<T> configuration) {
    _configuration = configuration;
    requestCallback = _configuration.request;
  }

  /// [GlobalKey] of the [Form].
  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  MyoroFormController() {
    addListener(_listener);
  }

  /// Starts the form process.
  @override
  Future<void> fetch() async {
    value = request.createLoadingState();

    // Validation function passed in [MyoroForm].
    final String? validationErrorMessage = _configuration.validation?.call();

    // Flutter's [Form] validation call, this will check validation functions
    // in, for example, a [MyoroInput] with [MyoroInput.validation] provided.
    final bool formKeyValidation = _formKey.currentState?.validate() ?? true;

    if (validationErrorMessage != null || !formKeyValidation) {
      value = request.createErrorState(!formKeyValidation ? 'Form not completed.' : validationErrorMessage!);
      return;
    }

    await super.fetch();
  }

  /// [MyoroFormController] listener.
  void _listener() {
    if (status.isSuccess) {
      _configuration.onSuccess?.call(data);
    }
    if (status.isError) {
      _configuration.onError?.call(errorMessage!);
    }
  }
}
