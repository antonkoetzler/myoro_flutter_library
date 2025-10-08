import 'package:faker/faker.dart' hide Color;
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_form_configuration.g.dart';

/// Configuration of [MyoroForm].
@immutable
@myoroModel
class MyoroFormConfiguration<T> with _$MyoroFormConfigurationMixin<T> {
  const MyoroFormConfiguration({this.validation, this.request, this.onSuccess, this.onError});

  MyoroFormConfiguration.fake({T? data})
    : validation = faker.randomGenerator.boolean()
          ? (() => faker.randomGenerator.boolean() ? faker.lorem.word() : kMyoroEmptyString)
          : null,
      request = faker.randomGenerator.boolean() ? (() => data) : null,
      onSuccess = faker.randomGenerator.boolean() ? ((_) {}) : null,
      onError = faker.randomGenerator.boolean() ? ((_) {}) : null;

  /// Validation function of [MyoroForm].
  ///
  /// If unsuccessful, a [String] of the error message is returned. If successful, returns [kMyoroEmptyString].
  final MyoroFormValidation? validation;

  /// Request that is executed after during the form process.
  final MyoroFormRequest<T>? request;

  /// Executed when the form is completed successfully.
  final MyoroFormOnSuccess<T>? onSuccess;

  /// Executed when the form is completed unsuccessfully.
  final MyoroFormOnError? onError;
}
