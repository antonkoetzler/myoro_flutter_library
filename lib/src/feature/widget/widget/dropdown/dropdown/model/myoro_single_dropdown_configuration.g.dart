// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_single_dropdown_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingleDropdownConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingleDropdownConfiguration<T> with _$MyoroSingleDropdownConfigurationMixin<T> {}
/// ```
mixin _$MyoroSingleDropdownConfigurationMixin<T> {
  MyoroSingleDropdownConfiguration<T> get self => this as MyoroSingleDropdownConfiguration<T>;

  MyoroSingleDropdownConfiguration<T> copyWith({
    MyoroDropdownTypeEnum? dropdownType,
    GlobalKey<State<StatefulWidget>>? targetKey,
    bool targetKeyProvided = true,
    MyoroSingleMenuConfiguration<T>? menuConfiguration,
  }) {
    return MyoroSingleDropdownConfiguration(
      dropdownType: dropdownType ?? self.dropdownType,
      targetKey: targetKeyProvided ? (targetKey ?? self.targetKey) : null,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSingleDropdownConfiguration<T> &&
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
      'MyoroSingleDropdownConfiguration<T>(\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  targetKey: ${self.targetKey},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      ');';
}
