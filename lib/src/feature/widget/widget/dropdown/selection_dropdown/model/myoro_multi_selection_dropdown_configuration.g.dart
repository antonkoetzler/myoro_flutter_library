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
    MyoroMultiMenuOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    String? label,
    MyoroInputDropdownSelectedItemBuilder<T>? selectedItemBuilder,
    bool? enabled,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    bool? toggleDropdownOnInputTap,
    bool? toggleDropdownOnFieldSubmitted,
    MyoroDropdownTypeEnum? dropdownType,
    GlobalKey<State<StatefulWidget>>? targetKey,
    bool targetKeyProvided = true,
    MyoroMultiMenuConfiguration<T>? menuConfiguration,
  }) {
    return MyoroMultiSelectionDropdownConfiguration(
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      label: label ?? self.label,
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
      enabled: enabled ?? self.enabled,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? self.checkboxOnChanged) : null,
      dropdownType: dropdownType ?? self.dropdownType,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiSelectionDropdownConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.onChanged == self.onChanged &&
        other.label == self.label &&
        other.selectedItemBuilder == self.selectedItemBuilder &&
        other.enabled == self.enabled &&
        other.checkboxOnChanged == self.checkboxOnChanged &&
        other.toggleDropdownOnInputTap == self.toggleDropdownOnInputTap &&
        other.toggleDropdownOnFieldSubmitted == self.toggleDropdownOnFieldSubmitted &&
        other.dropdownType == self.dropdownType &&
        other.targetKey == self.targetKey &&
        other.menuConfiguration == self.menuConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.onChanged,
      self.label,
      self.selectedItemBuilder,
      self.enabled,
      self.checkboxOnChanged,
      self.toggleDropdownOnInputTap,
      self.toggleDropdownOnFieldSubmitted,
      self.dropdownType,
      self.targetKey,
      self.menuConfiguration,
    );
  }

  @override
  String toString() =>
      'MyoroMultiSelectionDropdownConfiguration<T>(\n'
      '  onChanged: ${self.onChanged},\n'
      '  label: ${self.label},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      '  enabled: ${self.enabled},\n'
      '  checkboxOnChanged: ${self.checkboxOnChanged},\n'
      '  toggleDropdownOnInputTap: ${self.toggleDropdownOnInputTap},\n'
      '  toggleDropdownOnFieldSubmitted: ${self.toggleDropdownOnFieldSubmitted},\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  targetKey: ${self.targetKey},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      ');';
}
