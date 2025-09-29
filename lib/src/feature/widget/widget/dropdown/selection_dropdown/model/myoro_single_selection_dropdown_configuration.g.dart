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
    MyoroSelectionDropdownMenuTypeEnum? menuTypeEnum,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    MyoroSingleMenuConfiguration<T>? menuConfiguration,
    MyoroSelectionDropdownSelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroSingleSelectionDropdownConfiguration(
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
    return other is MyoroSingleSelectionDropdownConfiguration<T> &&
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
      'MyoroSingleSelectionDropdownConfiguration<T>(\n'
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
