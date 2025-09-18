// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_multi_accordion_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMultiAccordionConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMultiAccordionConfiguration with _$MyoroMultiAccordionConfigurationMixin {}
/// ```
mixin _$MyoroMultiAccordionConfigurationMixin {
  MyoroMultiAccordionConfiguration get self => this as MyoroMultiAccordionConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiAccordionConfiguration &&
        other.runtimeType == runtimeType &&
        other.selectedItems == self.selectedItems &&
        other.thumbVisibility == self.thumbVisibility &&
        other.items == self.items;
  }

  @override
  int get hashCode {
    return Object.hash(self.selectedItems, self.thumbVisibility, self.items);
  }

  @override
  String toString() =>
      'MyoroMultiAccordionConfiguration(\n'
      '  selectedItems: ${self.selectedItems},\n'
      '  thumbVisibility: ${self.thumbVisibility},\n'
      '  items: ${self.items},\n'
      ');';
}
