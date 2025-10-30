import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_form.dart';
part '../_widget/_myoro_form_state.dart';

/// Base form widget. Should always be used for any type of form content.
class MyoroForm<T> extends StatefulWidget {
  /// Default constructor.
  const MyoroForm({
    super.key,
    this.controller,
    this.validation,
    this.request,
    this.onSuccess,
    this.onError,
    required this.builder,
  }) : assert(
         !(controller != null && (validation != null || request != null || onSuccess != null || onError != null)),
         '[MyoroForm<$T>]: If [controller] is provided, [validation], [request], [onSuccess], '
         'and [onError] must be null, as they are already provided in the controller.',
       );

  /// Controller in the case that the controller needs to be used outside of [builder]'s scope.
  final MyoroFormController<T>? controller;

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

  /// Builder of the content within the form.
  final MyoroFormBuilder<T> builder;

  /// Create state function.
  @override
  State<MyoroForm<T>> createState() => _MyoroFormState<T>();
}
