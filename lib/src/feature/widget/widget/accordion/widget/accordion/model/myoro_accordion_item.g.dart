// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_accordion_item.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroAccordionItem] once the code is generated.
///
/// ```dart
/// class MyoroAccordionItem with _$MyoroAccordionItemMixin {}
/// ```
mixin _$MyoroAccordionItemMixin {
  MyoroAccordionItem get self => this as MyoroAccordionItem;

  @override
  bool operator ==(Object other) {
    return other is MyoroAccordionItem &&
        other.runtimeType == runtimeType &&
        other.title == self.title &&
        other.content == self.content;
  }

  @override
  int get hashCode {
    return Object.hash(self.title, self.content);
  }

  @override
  String toString() =>
      'MyoroAccordionItem(\n'
      '  title: ${self.title},\n'
      '  content: ${self.content},\n'
      ');';
}
