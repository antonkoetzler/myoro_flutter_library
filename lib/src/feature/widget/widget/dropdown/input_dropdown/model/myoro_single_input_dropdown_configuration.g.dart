// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_single_input_dropdown_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingleInputDropdownConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingleInputDropdownConfiguration<T> with _$MyoroSingleInputDropdownConfigurationMixin<T> {}
/// ```
mixin _$MyoroSingleInputDropdownConfigurationMixin<T> {
  MyoroSingleInputDropdownConfiguration<T> get self => this as MyoroSingleInputDropdownConfiguration<T>;

  MyoroSingleInputDropdownConfiguration<T> copyWith({
    MyoroSingleInputDropdownNumberInputConfiguration? numberInputConfiguration,
    bool numberInputConfigurationProvided = true,
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
    MyoroSingleMenuConfiguration<T>? menuConfiguration,
  }) {
    return MyoroSingleInputDropdownConfiguration(
      numberInputConfiguration: numberInputConfigurationProvided
          ? (numberInputConfiguration ?? self.numberInputConfiguration)
          : null,
      label: label ?? self.label,
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
      enabled: enabled ?? self.enabled,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? self.checkboxOnChanged) : null,
      toggleDropdownOnInputTap: toggleDropdownOnInputTap ?? self.toggleDropdownOnInputTap,
      toggleDropdownOnFieldSubmitted: toggleDropdownOnFieldSubmitted ?? self.toggleDropdownOnFieldSubmitted,
      dropdownType: dropdownType ?? self.dropdownType,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSingleInputDropdownConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.numberInputConfiguration == self.numberInputConfiguration &&
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
      self.numberInputConfiguration,
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
      'MyoroSingleInputDropdownConfiguration<T>(\n'
      '  numberInputConfiguration: ${self.numberInputConfiguration},\n'
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
