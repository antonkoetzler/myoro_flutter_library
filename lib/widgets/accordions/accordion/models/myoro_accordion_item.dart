part of '../myoro_accordion.dart';

/// Item of a [MyoroAccordion].
class MyoroAccordionItem extends Equatable {
  /// Builder of the title of the item.
  final MyoroAccordionItemTitleBuilder titleBuilder;

  /// Builder of the content of the [MyoroAccordionItem].
  final MyoroAccordionItemContentBuilder contentBuilder;

  const MyoroAccordionItem({required this.titleBuilder, required this.contentBuilder});

  MyoroAccordionItem.fake()
    : titleBuilder = ((_) => const SizedBox.shrink()),
      contentBuilder = ((_) => const SizedBox.shrink());

  MyoroAccordionItem copyWith({
    MyoroAccordionItemTitleBuilder? titleBuilder,
    MyoroAccordionItemContentBuilder? contentBuilder,
  }) {
    return MyoroAccordionItem(
      titleBuilder: titleBuilder ?? this.titleBuilder,
      contentBuilder: contentBuilder ?? this.contentBuilder,
    );
  }

  @override
  List<Object?> get props {
    return [titleBuilder, contentBuilder];
  }

  @override
  String toString() =>
      'MyoroAccordionItem(\n'
      '  titleBuilder: $titleBuilder,\n'
      '  contentBuilder: $contentBuilder,\n'
      ');';
}
