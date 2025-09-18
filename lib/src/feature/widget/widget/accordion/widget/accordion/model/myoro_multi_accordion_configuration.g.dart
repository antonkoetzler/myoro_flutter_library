// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_multi_accordion_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroMultiAccordionConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroMultiAccordionConfiguration<T> with _$MyoroMultiAccordionConfigurationMixin<T> {}
/// ```
mixin _$MyoroMultiAccordionConfigurationMixin<T> {
  MyoroMultiAccordionConfiguration<T> get self => this as MyoroMultiAccordionConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiAccordionConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.selectedItems == self.selectedItems &&
        other.thumbVisibility == self.thumbVisibility &&
        other.titleBuilder == self.titleBuilder &&
        other.contentBuilder == self.contentBuilder &&
        other.items == self.items;
  }

  @override
  int get hashCode {
    return Object.hash(self.selectedItems, self.thumbVisibility, self.titleBuilder, self.contentBuilder, self.items);
  }

  @override
  String toString() =>
      'MyoroMultiAccordionConfiguration<T>(\n'
      '  selectedItems: ${self.selectedItems},\n'
      '  thumbVisibility: ${self.thumbVisibility},\n'
      '  titleBuilder: ${self.titleBuilder},\n'
      '  contentBuilder: ${self.contentBuilder},\n'
      '  items: ${self.items},\n'
      ');';
}
