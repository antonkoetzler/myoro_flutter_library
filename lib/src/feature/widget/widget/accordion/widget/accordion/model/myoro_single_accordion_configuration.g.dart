// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_single_accordion_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingleAccordionConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingleAccordionConfiguration with _$MyoroSingleAccordionConfigurationMixin {}
/// ```
mixin _$MyoroSingleAccordionConfigurationMixin {
  MyoroSingleAccordionConfiguration get self => this as MyoroSingleAccordionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroSingleAccordionConfiguration &&
        other.runtimeType == runtimeType &&
        other.selectedItem == self.selectedItem &&
        other.thumbVisibility == self.thumbVisibility &&
        other.items == self.items;
  }

  @override
  int get hashCode {
    return Object.hash(self.selectedItem, self.thumbVisibility, self.items);
  }

  @override
  String toString() =>
      'MyoroSingleAccordionConfiguration(\n'
      '  selectedItem: ${self.selectedItem},\n'
      '  thumbVisibility: ${self.thumbVisibility},\n'
      '  items: ${self.items},\n'
      ');';
}
