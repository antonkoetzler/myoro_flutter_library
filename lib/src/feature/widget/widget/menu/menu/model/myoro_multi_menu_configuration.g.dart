// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_multi_menu_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMultiMenuConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMultiMenuConfiguration<T> with _$MyoroMultiMenuConfigurationMixin<T> {}
/// ```
mixin _$MyoroMultiMenuConfigurationMixin<T> {
  MyoroMultiMenuConfiguration<T> get self => this as MyoroMultiMenuConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiMenuConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.selectedItems == self.selectedItems &&
        other.onChanged == self.onChanged &&
        other.request == self.request &&
        other.onEndReachedRequest == self.onEndReachedRequest &&
        other.searchCallback == self.searchCallback &&
        other.itemBuilder == self.itemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.selectedItems,
      self.onChanged,
      self.request,
      self.onEndReachedRequest,
      self.searchCallback,
      self.itemBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroMultiMenuConfiguration<T>(\n'
      '  selectedItems: ${self.selectedItems},\n'
      '  onChanged: ${self.onChanged},\n'
      '  request: ${self.request},\n'
      '  onEndReachedRequest: ${self.onEndReachedRequest},\n'
      '  searchCallback: ${self.searchCallback},\n'
      '  itemBuilder: ${self.itemBuilder},\n'
      ');';
}
