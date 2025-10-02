// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_multi_input_dropdown_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMultiInputDropdownConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMultiInputDropdownConfiguration<T> with _$MyoroMultiInputDropdownConfigurationMixin<T> {}
/// ```
mixin _$MyoroMultiInputDropdownConfigurationMixin<T> {
  MyoroMultiInputDropdownConfiguration<T> get self => this as MyoroMultiInputDropdownConfiguration<T>;

  MyoroMultiInputDropdownConfiguration<T> copyWith({
    MyoroInputDropdownSelectedItemBuilder<T>? selectedItemBuilder,
    MyoroDropdownTypeEnum? dropdownType,
    GlobalKey<State<StatefulWidget>>? targetKey,
    bool targetKeyProvided = true,
    MyoroMultiMenuConfiguration<T>? menuConfiguration,
  }) {
    return MyoroMultiInputDropdownConfiguration(
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
      dropdownType: dropdownType ?? self.dropdownType,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiInputDropdownConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.selectedItemBuilder == self.selectedItemBuilder &&
        other.dropdownType == self.dropdownType &&
        other.targetKey == self.targetKey &&
        other.menuConfiguration == self.menuConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(self.selectedItemBuilder, self.dropdownType, self.targetKey, self.menuConfiguration);
  }

  @override
  String toString() =>
      'MyoroMultiInputDropdownConfiguration<T>(\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  targetKey: ${self.targetKey},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      ');';
}
