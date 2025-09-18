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
        other.selectedItem == self.selectedItem &&
        other.onChanged == self.onChanged &&
        other.request == self.request &&
        other.onEndReachedRequest == self.onEndReachedRequest &&
        other.searchCallback == self.searchCallback &&
        other.itemBuilder == self.itemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.selectedItem,
      self.onChanged,
      self.request,
      self.onEndReachedRequest,
      self.searchCallback,
      self.itemBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroSingularMenuConfiguration<T>(\n'
      '  selectedItem: ${self.selectedItem},\n'
      '  onChanged: ${self.onChanged},\n'
      '  request: ${self.request},\n'
      '  onEndReachedRequest: ${self.onEndReachedRequest},\n'
      '  searchCallback: ${self.searchCallback},\n'
      '  itemBuilder: ${self.itemBuilder},\n'
      ');';
}
