import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_accordions_widget_showcase_screen_state.dart';

/// View model of [MyoroAccordionsWidgetShowcaseScreen].
final class MyoroAccordionsWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroAccordionsWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroAccordionsWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroAccordionController.items]
  Set<MyoroAccordionItem> get _items {
    return List.generate(
      faker.randomGenerator.integer(10, min: 5),
      (int index) => MyoroAccordionItem.fake(title: Text('Item #$index'), content: Text(faker.lorem.word())),
    ).toSet();
  }

  /// [MyoroAccordionConfiguration] of the [MyoroSingleAccordion].
  MyoroSingleAccordionConfiguration buildSingleConfiguration() {
    return MyoroSingleAccordionConfiguration(thumbVisibility: state.thumbVisibility, items: _items);
  }

  /// [MyoroAccordionConfiguration] of the [MyoroMultiAccordion].
  MyoroMultiAccordionConfiguration buildMultiConfiguration() {
    return MyoroMultiAccordionConfiguration(thumbVisibility: state.thumbVisibility, items: _items);
  }

  /// [MyoroAccordionThemeExtension] of the [MyoroAccordion].
  MyoroAccordionThemeExtension buildThemeExtension(BuildContext context) {
    final accordionThemeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();

    return accordionThemeExtension.copyWith(
      itemContentBackgroundColor: state.itemContentBackgroundColor,
      itemContentAnimationDuration: state.itemContentAnimationDuration,
      itemContentAnimationCurve: state.itemContentAnimationCurve,
      itemTitleButtonSelectedBackgroundColor: state.itemTitleButtonSelectedBackgroundColor,
      itemTitleButtonContentPadding: state.itemTitleButtonContentPadding,
      itemTitleButtonSpacing: state.itemTitleButtonSpacing,
      itemTitleButtonTitleTextStyle: state.itemTitleButtonTitleTextStyle,
      itemTitleButtonArrowIcon: state.itemTitleButtonArrowIcon,
      itemTitleButtonArrowIconColor: state.itemTitleButtonArrowIconColor,
      itemTitleButtonArrowIconSize: state.itemTitleButtonArrowIconSize,
      itemTitleButtonArrowAnimationDuration: state.itemTitleButtonArrowAnimationDuration,
      itemTitleButtonArrowAnimationCurve: state.itemTitleButtonArrowAnimationCurve,
    );
  }
}
