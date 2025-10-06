// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_search_input_v2_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSearchInputV2Configuration] once the code is generated.
///
/// ```dart
/// class MyoroSearchInputV2Configuration<T> with _$MyoroSearchInputV2ConfigurationMixin<T> {}
/// ```
mixin _$MyoroSearchInputV2ConfigurationMixin<T> {
  MyoroSearchInputV2Configuration<T> get self => this as MyoroSearchInputV2Configuration<T>;

  MyoroSearchInputV2Configuration<T> copyWith({
    MyoroDropdownTypeEnum? dropdownType,
    MyoroSearchInputV2MenuConfiguration<T>? menuConfiguration,
    MyoroInputDropdownSelectedItemBuilder<T>? selectedItemBuilder,
  }) {
    return MyoroSearchInputV2Configuration(
      dropdownType: dropdownType ?? self.dropdownType,
      menuConfiguration: menuConfiguration ?? self.menuConfiguration,
      selectedItemBuilder: selectedItemBuilder ?? self.selectedItemBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputV2Configuration<T> &&
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
      'MyoroSearchInputV2Configuration<T>(\n'
      '  dropdownType: ${self.dropdownType},\n'
      '  menuConfiguration: ${self.menuConfiguration},\n'
      '  selectedItemBuilder: ${self.selectedItemBuilder},\n'
      ');';
}
