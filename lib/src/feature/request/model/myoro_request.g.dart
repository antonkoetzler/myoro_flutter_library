// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_request.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroRequest] once the code is generated.
///
/// ```dart
/// class MyoroRequest<T> with _$MyoroRequestMixin<T> {}
/// ```
mixin _$MyoroRequestMixin<T> {
  MyoroRequest<T> get self => this as MyoroRequest<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroRequest<T> &&
        other.runtimeType == runtimeType &&
        other.status == self.status &&
        other.errorMessage == self.errorMessage &&
        other.data == self.data;
  }

  @override
  int get hashCode {
    return Object.hash(self.status, self.errorMessage, self.data);
  }

  @override
  String toString() =>
      'MyoroRequest<T>(\n'
      '  status: ${self.status},\n'
      '  errorMessage: ${self.errorMessage},\n'
      '  data: ${self.data},\n'
      ');';
}
