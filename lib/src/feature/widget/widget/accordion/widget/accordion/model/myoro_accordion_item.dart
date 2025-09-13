import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_item.g.dart';

/// Item of a [MyoroAccordion].
@myoroModel
class MyoroAccordionItem with _$MyoroAccordionItemMixin {
  const MyoroAccordionItem({required this.title, required this.content});

  // coverage:ignore-start
  MyoroAccordionItem.fake({Widget? title, Widget? content})
    : title = title ?? Text(faker.lorem.word()),
      content = content ?? Text(faker.lorem.word());
  // coverage:ignore-end

  /// Title of the item.
  final Widget title;

  /// Content of the [MyoroAccordionItem].
  final Widget content;

  MyoroAccordionItem copyWith({Widget? title, Widget? content}) {
    return MyoroAccordionItem(title: title ?? this.title, content: content ?? this.content);
  }
}
