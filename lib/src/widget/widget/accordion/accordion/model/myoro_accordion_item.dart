import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_item.g.dart';

/// Item of a [MyoroAccordion].
@myoroModel
class MyoroAccordionItem with _$MyoroAccordionItemMixin {
  const MyoroAccordionItem({required this.titleBuilder, required this.contentBuilder});

  /// Builder of the title of the item.
  final MyoroAccordionItemTitleBuilder titleBuilder;

  /// Builder of the content of the [MyoroAccordionItem].
  final MyoroAccordionItemContentBuilder contentBuilder;

  MyoroAccordionItem.fake({Widget? title, Widget? content})
    : titleBuilder = ((_) => title ?? Text(faker.lorem.word())),
      contentBuilder = ((_) => content ?? Text(faker.lorem.word()));
}
