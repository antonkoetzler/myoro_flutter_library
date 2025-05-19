part of 'myoro_form.dart';

/// Validation function that is executed before [MyoroFormRequest].
typedef MyoroFormValidation = String? Function();

/// Request that will be executed after the form validation process is successful.
typedef MyoroFormRequest<T> = FutureOr<T> Function();

/// Function that is executed when the form process is completed successfully.
typedef MyoroFormOnSuccess<T> = Function(T? result);

/// Function that is executed when the form process is completed unsuccessfully.
typedef MyoroFormOnError = Function(String errorMessage);
