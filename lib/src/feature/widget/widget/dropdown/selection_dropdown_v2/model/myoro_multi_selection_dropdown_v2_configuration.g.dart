// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_multi_selection_dropdown_v2_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMultiSelectionDropdownV2Configuration] once the code is generated.
///
/// ```dart
/// class MyoroMultiSelectionDropdownV2Configuration<T> with _$MyoroMultiSelectionDropdownV2ConfigurationMixin<T> {}
/// ```
mixin _$MyoroMultiSelectionDropdownV2ConfigurationMixin<T> {
  MyoroMultiSelectionDropdownV2Configuration<T> get self => this as MyoroMultiSelectionDropdownV2Configuration<T>;

  MyoroMultiSelectionDropdownV2Configuration<T> copyWith({
    MyoroMultiSelectionDropdownV2OnChanged<T>? onChanged,
    bool onChangedProvided = true,
    MyoroDropdownTypeEnum? dropdownType,
    MyoroMultiMenuConfiguration<T>? menuConfiguration,
    MyoroSelectionDropdownV2SelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroMultiSelectionDropdownV2Configuration(
      onChanged: onChangedProvided ? (onChanged ?? self.onChanged) : null,
      dropdownType: dropdownType ?? self.dropdownType,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiSelectionDropdownV2Configuration<T> &&
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
      'MyoroMultiSelectionDropdownV2Configuration<T>(\n'
      '  onChanged: ${self.onChanged},\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      ');';
}
