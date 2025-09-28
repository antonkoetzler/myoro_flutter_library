// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_multi_selection_dropdown_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMultiSelectionDropdownConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMultiSelectionDropdownConfiguration<T> with _$MyoroMultiSelectionDropdownConfigurationMixin<T> {}
/// ```
mixin _$MyoroMultiSelectionDropdownConfigurationMixin<T> {
  MyoroMultiSelectionDropdownConfiguration<T> get self => this as MyoroMultiSelectionDropdownConfiguration<T>;

  MyoroMultiSelectionDropdownConfiguration<T> copyWith({
    MyoroMultiSelectionDropdownOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroMultiSelectionDropdownCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    String? label,
    MyoroSelectionDropdownMenuTypeEnum? menuTypeEnum,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroMultiMenuConfiguration<T>? menuConfiguration,
    MyoroSelectionDropdownSelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroMultiSelectionDropdownConfiguration(
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? self.checkboxOnChanged) : null,
      label: label ?? self.label,
      menuTypeEnum: menuTypeEnum ?? self.menuTypeEnum,
      enabled: enabled ?? self.enabled,
      allowItemClearing: allowItemClearing ?? self.allowItemClearing,
      selectedItemTextAlign: selectedItemTextAlign ?? self.selectedItemTextAlign,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiSelectionDropdownConfiguration<T> &&
        other.runtimeType == runtimeType &&
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
      'MyoroMultiSelectionDropdownConfiguration<T>(\n'
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
