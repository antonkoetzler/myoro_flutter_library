import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroAccordionWidgetShowcase].
final class MyoroAccordionWidgetShowcaseViewModel {
  /// [MyoroAccordionController.items]
  final _items =
      List.generate(
        faker.randomGenerator.integer(10, min: 5),
        (int index) => MyoroAccordionItem.fake(title: Text('Item #$index'), content: Text(faker.lorem.word())),
      ).toSet();
  Set<MyoroAccordionItem> get items => _items;
}
