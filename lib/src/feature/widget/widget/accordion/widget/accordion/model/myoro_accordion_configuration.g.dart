// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_accordion_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroAccordionConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroAccordionConfiguration with _$MyoroAccordionConfigurationMixin {}
/// ```
mixin _$MyoroAccordionConfigurationMixin {
  MyoroAccordionConfiguration get self => this as MyoroAccordionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroAccordionConfiguration &&
        other.runtimeType == runtimeType &&
        other.selectedItem == self.selectedItem &&
        other.items == self.items;
  }

  @override
  int get hashCode {
    return Object.hash(self.selectedItem, self.items);
  }

  @override
  String toString() =>
      'MyoroAccordionConfiguration(\n'
      '  selectedItem: ${self.selectedItem},\n'
      '  items: ${self.items},\n'
      ');';
}
