import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroFormController].
class MyoroFormState<T> extends MyoroRequestController<T> {
  MyoroFormState(this.configuration);

  /// Configuration.
  final MyoroFormConfiguration<T> configuration;

  /// [GlobalKey] of the [Form].
  final formKey = GlobalKey<FormState>();
}
