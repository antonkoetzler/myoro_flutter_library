// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_single_selection_dropdown_v2_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingleSelectionDropdownV2Configuration] once the code is generated.
///
/// ```dart
/// class MyoroSingleSelectionDropdownV2Configuration<T> with _$MyoroSingleSelectionDropdownV2ConfigurationMixin<T> {}
/// ```
mixin _$MyoroSingleSelectionDropdownV2ConfigurationMixin<T> {
  MyoroSingleSelectionDropdownV2Configuration<T> get self => this as MyoroSingleSelectionDropdownV2Configuration<T>;

  MyoroSingleSelectionDropdownV2Configuration<T> copyWith({
    MyoroSingleSelectionDropdownV2OnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroDropdownTypeEnum? dropdownType,
    MyoroSingleMenuConfiguration<T>? menuConfiguration,
    MyoroSelectionDropdownV2SelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroSingleSelectionDropdownV2Configuration(
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      dropdownType: dropdownType ?? self.dropdownType,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSingleSelectionDropdownV2Configuration<T> &&
        other.runtimeType == runtimeType &&
        other.onChanged == self.onChanged &&
        other.dropdownType == self.dropdownType &&
        other.menuConfiguration == self.menuConfiguration &&
        other.selectedItemBuilder == self.selectedItemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(self.onChanged, self.dropdownType, self.menuConfiguration, self.selectedItemBuilder);
  }

  @override
  String toString() =>
      'MyoroSingleSelectionDropdownV2Configuration<T>(\n'
      '  onChanged: ${self.onChanged},\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      ');';
}
