// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_single_accordion_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSingleAccordionConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroSingleAccordionConfiguration<T> with _$MyoroSingleAccordionConfigurationMixin<T> {}
/// ```
mixin _$MyoroSingleAccordionConfigurationMixin<T> {
  MyoroSingleAccordionConfiguration<T> get self => this as MyoroSingleAccordionConfiguration<T>;

  @override
  bool operator ==(Object other) {
    return other is MyoroSingleAccordionConfiguration<T> &&
        other.runtimeType == runtimeType &&
        other.selectedItem == self.selectedItem &&
        other.thumbVisibility == self.thumbVisibility &&
        other.titleBuilder == self.titleBuilder &&
        other.contentBuilder == self.contentBuilder &&
        other.items == self.items;
  }

  @override
  int get hashCode {
    return Object.hash(self.selectedItem, self.thumbVisibility, self.titleBuilder, self.contentBuilder, self.items);
  }

  @override
  String toString() =>
      'MyoroSingleAccordionConfiguration<T>(\n'
      '  selectedItem: ${self.selectedItem},\n'
      '  thumbVisibility: ${self.thumbVisibility},\n'
      '  titleBuilder: ${self.titleBuilder},\n'
      '  contentBuilder: ${self.contentBuilder},\n'
      '  items: ${self.items},\n'
      ');';
}
