// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_form_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroFormConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroFormConfiguration<T> with _$MyoroFormConfigurationMixin<T> {}
/// ```
mixin _$MyoroFormConfigurationMixin<T> {
  MyoroFormConfiguration<T> get self => this as MyoroFormConfiguration<T>;

  MyoroFormConfiguration<T> copyWith({
    String? Function()? validation,
    bool validationProvided = true,
    FutureOr<T> Function()? request,
    bool requestProvided = true,
    dynamic Function(T?)? onSuccess,
    bool onSuccessProvided = true,
    dynamic Function(String)? onError,
    bool onErrorProvided = true,
    dynamic Function(MyoroRequest<T>, MyoroFormController<T>)? builder,
  }) {
    return MyoroFormConfiguration(
      validation: validationProvided ? (validation ?? self.validation) : null,
      request: requestProvided ? (request ?? self.request) : null,
      onSuccess: onSuccessProvided ? (onSuccess ?? self.onSuccess) : null,
      onError: onErrorProvided ? (onError ?? self.onError) : null,
      builder: builder ?? self.builder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFormConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.validation == self.validation &&
        other.request == self.request &&
        other.onSuccess == self.onSuccess &&
        other.onError == self.onError &&
        other.builder == self.builder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.validation,
      self.request,
      self.onSuccess,
      self.onError,
      self.builder,
    );
  }

  @override
  String toString() =>
      'MyoroFormConfiguration<T>(\n'
      '  validation: ${self.validation},\n'
      '  request: ${self.request},\n'
      '  onSuccess: ${self.onSuccess},\n'
      '  onError: ${self.onError},\n'
      '  builder: ${self.builder},\n'
      ');';
}
