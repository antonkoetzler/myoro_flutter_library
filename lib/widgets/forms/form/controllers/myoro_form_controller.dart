import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroForm].
class MyoroFormController<T> extends MyoroRequestNotifier<T> {
  /// Configuration.
  MyoroFormConfiguration<T> configuration;

  /// [GlobalKey] of the [Form].
  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  MyoroFormController(this.configuration) {
    addListener(_listener);
  }

  /// [MyoroFormController] listener.
  void _listener() {
    if (status.isSuccess) {
      configuration.onSuccess?.call(data);
    }
    if (status.isError) {
      configuration.onError?.call(errorMessage!);
    }
  }
}
