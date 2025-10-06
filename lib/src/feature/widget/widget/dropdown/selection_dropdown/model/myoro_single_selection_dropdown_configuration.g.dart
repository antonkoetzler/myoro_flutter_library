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
  MyoroSingleSelectionDropdownConfiguration<T> get self =>
      this as MyoroSingleSelectionDropdownConfiguration<T>;

  MyoroSingleSelectionDropdownConfiguration<T> copyWith({
    MyoroSingleSelectionDropdownOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroDropdownTypeEnum? dropdownType,
    MyoroSingleMenuConfiguration<T>? menuConfiguration,
    MyoroSelectionDropdownSelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroSingleSelectionDropdownConfiguration(
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      dropdownType: dropdownType ?? self.dropdownType,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSingleSelectionDropdownConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.onChanged == self.onChanged &&
        other.dropdownType == self.dropdownType &&
        other.menuConfiguration == self.menuConfiguration &&
        other.selectedItemBuilder == self.selectedItemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.onChanged,
      self.dropdownType,
      self.menuConfiguration,
      self.selectedItemBuilder,
    );
  }

  @override
  String toString() =>
      'MyoroSingleSelectionDropdownConfiguration<T>(\n'
      '  onChanged: ${self.onChanged},\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      ');';
}
