// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_menu_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMenuConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMenuConfiguration<T> with _$MyoroMenuConfigurationMixin<T> {}
/// ```
mixin _$MyoroMenuConfigurationMixin<T> {
  MyoroMenuConfiguration<T> get self => this as MyoroMenuConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroMenuConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.constraints == self.constraints &&
        other.backgroundColor == self.backgroundColor &&
        other.border == self.border &&
        other.borderRadius == self.borderRadius &&
        other.request == self.request &&
        other.onEndReachedRequest == self.onEndReachedRequest &&
        other.searchCallback == self.searchCallback &&
        other.itemBuilder == self.itemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.constraints,
      self.backgroundColor,
      self.border,
      self.borderRadius,
      self.request,
      self.onEndReachedRequest,
      self.searchCallback,
      self.itemBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroMenuConfiguration<T>(\n'
      '  constraints: ${self.constraints},\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  border: ${self.border},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  request: ${self.request},\n'
      '  onEndReachedRequest: ${self.onEndReachedRequest},\n'
      '  searchCallback: ${self.searchCallback},\n'
      '  itemBuilder: ${self.itemBuilder},\n'
      ');';
}
