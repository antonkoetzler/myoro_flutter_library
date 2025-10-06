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
  MyoroMultiSelectionDropdownConfiguration<T> get self =>
      this as MyoroMultiSelectionDropdownConfiguration<T>;

  MyoroMultiSelectionDropdownConfiguration<T> copyWith({
    MyoroMultiSelectionDropdownOnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroDropdownTypeEnum? dropdownType,
    MyoroMultiMenuConfiguration<T>? menuConfiguration,
    MyoroSelectionDropdownSelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroMultiSelectionDropdownConfiguration(
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      dropdownType: dropdownType ?? self.dropdownType,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiSelectionDropdownConfiguration<T> &&
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
      'MyoroMultiSelectionDropdownConfiguration<T>(\n'
      '  onChanged: ${self.onChanged},\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      ');';
}
