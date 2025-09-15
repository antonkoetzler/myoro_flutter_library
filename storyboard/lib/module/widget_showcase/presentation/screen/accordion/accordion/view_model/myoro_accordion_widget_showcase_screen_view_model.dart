import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_accordion_widget_showcase_screen_state.dart';

/// View model of [MyoroAccordionWidgetShowcaseScreen].
final class MyoroAccordionWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroAccordionWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroAccordionWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroAccordionController.items]
  final _items =
      List.generate(
        faker.randomGenerator.integer(10, min: 5),
        (int index) =>
            MyoroAccordionItem.fake(title: Text('Item #$index'), content: Text(faker.lorem.word())),
      ).toSet();
  Set<MyoroAccordionItem> get items => _items;

  /// [MyoroAccordionConfiguration] of the [MyoroAccordion].
  MyoroAccordionConfiguration buildConfiguration() {
    return MyoroAccordionConfiguration(thumbVisibility: state.thumbVisibility, items: items);
  }

  /// [MyoroAccordionThemeExtension] of the [MyoroAccordion].
  MyoroAccordionThemeExtension buildThemeExtension(BuildContext context) {
    final accordionThemeExtension = context.resolveThemeExtension<MyoroAccordionThemeExtension>();

    return accordionThemeExtension.copyWith(
      thumbVisibility: state.thumbVisibility,
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
