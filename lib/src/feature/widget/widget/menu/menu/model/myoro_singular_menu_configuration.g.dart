// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_singular_menu_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingularMenuConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingularMenuConfiguration<T> with _$MyoroSingularMenuConfigurationMixin<T> {}
/// ```
mixin _$MyoroSingularMenuConfigurationMixin<T> {
  MyoroSingularMenuConfiguration<T> get self => this as MyoroSingularMenuConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroSingularMenuConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.initiallySelectedItem == self.initiallySelectedItem &&
        other.onChanged == self.onChanged &&
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
      self.initiallySelectedItem,
      self.onChanged,
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
      'MyoroSingularMenuConfiguration<T>(\n'
      '  initiallySelectedItem: ${self.initiallySelectedItem},\n'
      '  onChanged: ${self.onChanged},\n'
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
