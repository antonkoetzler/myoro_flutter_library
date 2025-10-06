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
    MyoroInputDropdownSelectedItemBuilder<T>? selectedItemBuilder,
    bool? toggleDropdownOnInputTap,
    bool? toggleDropdownOnFieldSubmitted,
    MyoroDropdownTypeEnum? dropdownType,
    GlobalKey<State<StatefulWidget>>? targetKey,
    bool targetKeyProvided = true,
    MyoroSingleMenuConfiguration<T>? menuConfiguration,
  }) {
    return MyoroSingleInputDropdownConfiguration(
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
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
        other.selectedItemBuilder == self.selectedItemBuilder &&
        other.toggleDropdownOnInputTap == self.toggleDropdownOnInputTap &&
        other.toggleDropdownOnFieldSubmitted == self.toggleDropdownOnFieldSubmitted &&
        other.dropdownType == self.dropdownType &&
        other.targetKey == self.targetKey &&
        other.menuConfiguration == self.menuConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.selectedItemBuilder,
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
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      '  toggleDropdownOnInputTap: ${self.toggleDropdownOnInputTap},\n'
      '  toggleDropdownOnFieldSubmitted: ${self.toggleDropdownOnFieldSubmitted},\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  targetKey: ${self.targetKey},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      ');';
}
