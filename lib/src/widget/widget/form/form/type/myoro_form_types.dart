// coverage:ignore-file

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Validation function that is executed before [MyoroFormRequest].
typedef MyoroFormValidation = String? Function();

/// Request that will be executed after the form validation process is successful.
typedef MyoroFormRequest<T> = FutureOr<T?> Function();

/// Function that is executed when the form process is completed successfully.
typedef MyoroFormOnSuccess<T> = void Function(T? result);

/// Function that is executed when the form process is completed unsuccessfully.
typedef MyoroFormOnError = void Function(String errorMessage);

/// Builder of the content within the form.
///
/// Contains controller so you don't need to create one & the status of the form execution.
typedef MyoroFormBuilder<T> = Widget Function(MyoroRequest<T> request, MyoroFormController<T> controller);
