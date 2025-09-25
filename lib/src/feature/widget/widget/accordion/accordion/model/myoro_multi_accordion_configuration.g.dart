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

  MyoroMultiAccordionConfiguration<T> copyWith({
    Set<T>? selectedItems,
    bool? thumbVisibility,
    MyoroAccordionBuilder<T>? titleBuilder,
    MyoroAccordionBuilder<T>? contentBuilder,
    Set<T>? items,
  }) {
    return MyoroMultiAccordionConfiguration(
      selectedItems: selectedItems ?? self.selectedItems,
      thumbVisibility: thumbVisibility ?? self.thumbVisibility,
      titleBuilder: titleBuilder ?? self.titleBuilder,
      contentBuilder: contentBuilder ?? self.contentBuilder,
      items: items ?? self.items,
    );
  }

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
