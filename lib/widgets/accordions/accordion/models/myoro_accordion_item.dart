import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_item.g.dart';

/// Item of a [MyoroAccordion].
@myoroModel
class MyoroAccordionItem with _$MyoroAccordionItemMixin {
  /// Builder of the title of the item.
  final MyoroAccordionItemTitleBuilder titleBuilder;

  /// Builder of the content of the [MyoroAccordionItem].
  final MyoroAccordionItemContentBuilder contentBuilder;

  const MyoroAccordionItem({required this.titleBuilder, required this.contentBuilder});

  MyoroAccordionItem.fake()
    : titleBuilder = ((_) => Text(faker.lorem.word())),
      contentBuilder = ((_) => Text(faker.lorem.word()));
}
