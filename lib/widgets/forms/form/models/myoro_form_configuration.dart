import 'dart:async';

import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_form_configuration.g.dart';

/// Configuration of [MyoroForm].
@myoroModel
class MyoroFormConfiguration<T> with $MyoroFormConfigurationMixin<T> {
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
  final MyoroFormBuilder<T> builder;

  const MyoroFormConfiguration({this.validation, this.request, this.onSuccess, this.onError, required this.builder});
}
