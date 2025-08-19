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

  MyoroAccordionItem copyWith({
    Widget Function(BuildContext)? titleBuilder,
    Widget Function(BuildContext)? contentBuilder,
  }) {
    return MyoroAccordionItem(
      titleBuilder: titleBuilder ?? self.titleBuilder,
      contentBuilder: contentBuilder ?? self.contentBuilder,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroAccordionItem &&
        other.runtimeType == runtimeType &&
        other.titleBuilder == self.titleBuilder &&
        other.contentBuilder == self.contentBuilder;
  }

  @override
  int get hashCode {
    return Object.hash(self.titleBuilder, self.contentBuilder);
  }

  @override
  String toString() =>
      'MyoroAccordionItem(\n'
      '  titleBuilder: ${self.titleBuilder},\n'
      '  contentBuilder: ${self.contentBuilder},\n'
      ');';
}
