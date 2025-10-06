// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_input_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSearchInputConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSearchInputConfiguration<T> with _$MyoroSearchInputConfigurationMixin<T> {}
/// ```
mixin _$MyoroSearchInputConfigurationMixin<T> {
  MyoroSearchInputConfiguration<T> get self => this as MyoroSearchInputConfiguration<T>;

  MyoroSearchInputConfiguration<T> copyWith({
    MyoroDropdownTypeEnum? dropdownType,
    MyoroSearchInputMenuConfiguration<T>? menuConfiguration,
    MyoroInputDropdownSelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroSearchInputConfiguration(
      dropdownType: dropdownType ?? self.dropdownType,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.dropdownType == self.dropdownType &&
        other.menuConfiguration == self.menuConfiguration &&
        other.selectedItemBuilder == self.selectedItemBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(self.dropdownType, self.menuConfiguration, self.selectedItemBuilder);
  }

  @override
  String toString() =>
      'MyoroSearchInputConfiguration<T>(\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      ');';
}
