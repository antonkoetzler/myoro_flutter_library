import 'dart:async';

import 'package:equatable/equatable.dart';
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

/// Configuration of [MyoroForm].
///
/// TODO: Needs to be tested.
class MyoroFormConfiguration<T> extends Equatable {
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
  final MyoroFormBuilder<T> builder;

  const MyoroFormConfiguration({
    this.controller,
    this.validation,
    this.request,
    this.onSuccess,
    this.onError,
    required this.builder,
  });

  MyoroFormConfiguration<T> copyWith({
    MyoroFormController? controller,
    bool controllerProvided = true,
    MyoroFormValidation? validation,
    bool validationProvided = true,
    MyoroFormRequest<T>? request,
    bool requestProvided = true,
    MyoroFormOnSuccess<T>? onSuccess,
    bool onSuccessProvided = true,
    MyoroFormOnError? onError,
    bool onErrorProvided = true,
    MyoroFormBuilder<T>? builder,
  }) {
    return MyoroFormConfiguration(
      controller: controllerProvided ? (controller ?? this.controller) : null,
      validation: validationProvided ? (validation ?? this.validation) : null,
      request: requestProvided ? (request ?? this.request) : null,
      onSuccess: onSuccessProvided ? (onSuccess ?? this.onSuccess) : null,
      onError: onErrorProvided ? (onError ?? this.onError) : null,
      builder: builder ?? this.builder,
    );
  }

  @override
  List<Object?> get props {
    return [controller, validation, request, onSuccess, onError, builder];
  }

  @override
  String toString() =>
      'MyoroFormConfiguration<$T>(\n'
      ');';
}
