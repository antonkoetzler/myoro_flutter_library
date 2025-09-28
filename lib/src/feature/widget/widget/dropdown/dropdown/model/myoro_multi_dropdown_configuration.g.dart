// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_multi_dropdown_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMultiDropdownConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMultiDropdownConfiguration<T> with _$MyoroMultiDropdownConfigurationMixin<T> {}
/// ```
mixin _$MyoroMultiDropdownConfigurationMixin<T> {
  MyoroMultiDropdownConfiguration<T> get self => this as MyoroMultiDropdownConfiguration<T>;

  MyoroMultiDropdownConfiguration<T> copyWith({
    MyoroDropdownTypeEnum? dropdownType,
    GlobalKey<State<StatefulWidget>>? targetKey,
    bool targetKeyProvided = true,
    MyoroMultiMenuConfiguration<T>? menuConfiguration,
  }) {
    return MyoroMultiDropdownConfiguration(
      dropdownType: dropdownType ?? self.dropdownType,
      targetKey: targetKeyProvided ? (targetKey ?? self.targetKey) : null,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiDropdownConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.dropdownType == self.dropdownType &&
        other.targetKey == self.targetKey &&
        other.menuConfiguration == self.menuConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(self.dropdownType, self.targetKey, self.menuConfiguration);
  }

  @override
  String toString() =>
      'MyoroMultiDropdownConfiguration<T>(\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  targetKey: ${self.targetKey},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      ');';
}
