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

  MyoroRequest<T> copyWith({
    MyoroRequestEnum? status,
    Object? error,
    bool errorProvided = true,
    T? data,
    bool dataProvided = true,
  }) {
    return MyoroRequest(
      status: status ?? self.status,
      error: errorProvided ? (error ?? self.error) : null,
      data: dataProvided ? (data ?? self.data) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroRequest<T> &&
        other.runtimeType == runtimeType &&
        other.status == self.status &&
        other.error == self.error &&
        other.data == self.data;
  }

  @override
  int get hashCode {
    return Object.hash(self.status, self.error, self.data);
  }

  @override
  String toString() =>
      'MyoroRequest<T>(\n'
      '  status: ${self.status},\n'
      '  error: ${self.error},\n'
      '  data: ${self.data},\n'
      ');';
}
