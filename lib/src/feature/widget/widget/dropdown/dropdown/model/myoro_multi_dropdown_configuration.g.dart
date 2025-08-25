// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_multi_dropdown_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMultiDropdownConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMultiDropdownConfiguration<T> with _$MyoroMultiDropdownConfigurationMixin<T> {}
/// ```
mixin _$MyoroMultiDropdownConfigurationMixin<T> {
  MyoroMultiDropdownConfiguration<T> get self => this as MyoroMultiDropdownConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiDropdownConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.selectedItems == self.selectedItems &&
        other.onChanged == self.onChanged &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.label == self.label &&
        other.menuTypeEnum == self.menuTypeEnum &&
        other.enabled == self.enabled &&
        other.allowItemClearing == self.allowItemClearing &&
        other.selectedItemTextAlign == self.selectedItemTextAlign &&
        other.menuConfiguration == self.menuConfiguration &&
        other.selectedItemBuilder == self.selectedItemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.selectedItems,
      self.onChanged,
      self.checkboxOnChanged,
      self.label,
      self.menuTypeEnum,
      self.enabled,
      self.allowItemClearing,
      self.selectedItemTextAlign,
      self.menuConfiguration,
      self.selectedItemBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroMultiDropdownConfiguration<T>(\n'
      '  selectedItems: ${self.selectedItems},\n'
      '  onChanged: ${self.onChanged},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  label: ${self.label},\n'
      '  menuTypeEnum: ${self.menuTypeEnum},\n'
      '  enabled: ${self.enabled},\n'
      '  allowItemClearing: ${self.allowItemClearing},\n'
      '  selectedItemTextAlign: ${self.selectedItemTextAlign},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      ');';
}
