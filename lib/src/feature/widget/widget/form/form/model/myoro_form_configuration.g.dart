// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_form_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFormConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroFormConfiguration<T> with _$MyoroFormConfigurationMixin<T> {}
/// ```
mixin _$MyoroFormConfigurationMixin<T> {
  MyoroFormConfiguration<T> get self => this as MyoroFormConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroFormConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.validation == self.validation &&
        other.request == self.request &&
        other.onSuccess == self.onSuccess &&
        other.onError == self.onError;
  }

  @override
  int get hashCode {
    return Object.hash(self.validation, self.request, self.onSuccess, self.onError);
  }

  @override
  String toString() =>
      'MyoroFormConfiguration<T>(\n'
      '  validation: ${self.validation},\n'
      '  request: ${self.request},\n'
      '  onSuccess: ${self.onSuccess},\n'
      '  onError: ${self.onError},\n'
      ');';
}
