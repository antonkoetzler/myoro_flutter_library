// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_accordion_item.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

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

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroAccordionItemExtension on MyoroAccordionItem {
  MyoroAccordionItem copyWith({
    Widget Function(BuildContext)? titleBuilder,
    Widget Function(BuildContext)? contentBuilder,
  }) {
    return MyoroAccordionItem(
      titleBuilder: titleBuilder ?? self.titleBuilder,
      contentBuilder: contentBuilder ?? self.contentBuilder,
    );
  }
}
