// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_single_selection_dropdown_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingleSelectionDropdownConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingleSelectionDropdownConfiguration<T> with _$MyoroSingleSelectionDropdownConfigurationMixin<T> {}
/// ```
mixin _$MyoroSingleSelectionDropdownConfigurationMixin<T> {
  MyoroSingleSelectionDropdownConfiguration<T> get self => this as MyoroSingleSelectionDropdownConfiguration<T>;

  MyoroSingleSelectionDropdownConfiguration<T> copyWith({
    MyoroSingleSelectionDropdownOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroSingleSelectionDropdownCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    String? label,
    MyoroDropdownTypeEnum? dropdownType,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroSingleDropdownConfiguration<T>? dropdownConfiguration,
    MyoroSelectionDropdownSelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroSingleSelectionDropdownConfiguration(
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
    return other is MyoroSingleSelectionDropdownConfiguration<T> &&
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
      'MyoroSingleSelectionDropdownConfiguration<T>(\n'
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
