import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Item of a [MyoroAccordion].
class MyoroAccordionItem extends Equatable {
  /// Builder of the title of the item.
  final MyoroAccordionItemTitleBuilder titleBuilder;

  /// Builder of the content of the [MyoroAccordionItem].
  final MyoroAccordionItemContentBuilder contentBuilder;

  const MyoroAccordionItem({required this.titleBuilder, required this.contentBuilder});

  MyoroAccordionItem.fake()
    : titleBuilder = ((_) => Text(faker.lorem.word())),
      contentBuilder = ((_) => Text(faker.lorem.word()));

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
