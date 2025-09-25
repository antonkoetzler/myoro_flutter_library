// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_single_menu_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingleMenuConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingleMenuConfiguration<T> with _$MyoroSingleMenuConfigurationMixin<T> {}
/// ```
mixin _$MyoroSingleMenuConfigurationMixin<T> {
  MyoroSingleMenuConfiguration<T> get self => this as MyoroSingleMenuConfiguration<T>;

  MyoroSingleMenuConfiguration<T> copyWith({
    T? selectedItem,
    bool selectedItemProvided = true,
    MyoroSingleMenuOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroMenuRequest<T>? request,
    MyoroMenuOnEndReachedRequest<T>? onEndReachedRequest,
    bool onEndReachedRequestProvided = true,
    MyoroMenuSearchCallback<T>? searchCallback,
    bool searchCallbackProvided = true,
    MyoroMenuItemBuilder<T>? itemBuilder,
  }) {
    return MyoroSingleMenuConfiguration(
      selectedItem: selectedItemProvided ? (selectedItem ?? self.selectedItem) : null,
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      request: request ?? self.request,
      onEndReachedRequest: onEndReachedRequestProvided ? (onEndReachedRequest ?? self.onEndReachedRequest) : null,
      searchCallback: searchCallbackProvided ? (searchCallback ?? self.searchCallback) : null,
      itemBuilder: itemBuilder ?? self.itemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSingleMenuConfiguration<T> &&
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
      'MyoroSingleMenuConfiguration<T>(\n'
      '  selectedItem: ${self.selectedItem},\n'
      '  onChanged: ${self.onChanged},\n'
      '  request: ${self.request},\n'
      '  onEndReachedRequest: ${self.onEndReachedRequest},\n'
      '  searchCallback: ${self.searchCallback},\n'
      '  itemBuilder: ${self.itemBuilder},\n'
      ');';
}
