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
    MyoroDropdownTypeEnum? dropdownType,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroMultiDropdownConfiguration<T>? dropdownConfiguration,
    MyoroSelectionDropdownSelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroMultiSelectionDropdownConfiguration(
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? self.checkboxOnChanged) : null,
      label: label ?? self.label,
      dropdownType: dropdownType ?? self.dropdownType,
      enabled: enabled ?? self.enabled,
      allowItemClearing: allowItemClearing ?? self.allowItemClearing,
      selectedItemTextAlign: selectedItemTextAlign ?? self.selectedItemTextAlign,
      dropdownConfiguration: dropdownConfiguration ?? self.dropdownConfiguration,
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
        other.dropdownType == self.dropdownType &&
        other.enabled == self.enabled &&
        other.allowItemClearing == self.allowItemClearing &&
        other.selectedItemTextAlign == self.selectedItemTextAlign &&
        other.dropdownConfiguration == self.dropdownConfiguration &&
        other.selectedItemBuilder == self.selectedItemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.onChanged,
      self.checkboxOnChanged,
      self.label,
      self.dropdownType,
      self.enabled,
      self.allowItemClearing,
      self.selectedItemTextAlign,
      self.dropdownConfiguration,
      self.selectedItemBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroMultiSelectionDropdownConfiguration<T>(\n'
      '  onChanged: ${self.onChanged},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  label: ${self.label},\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  enabled: ${self.enabled},\n'
      '  allowItemClearing: ${self.allowItemClearing},\n'
      '  selectedItemTextAlign: ${self.selectedItemTextAlign},\n'
      '  dropdownConfiguration: ${self.dropdownConfiguration},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      ');';
}
