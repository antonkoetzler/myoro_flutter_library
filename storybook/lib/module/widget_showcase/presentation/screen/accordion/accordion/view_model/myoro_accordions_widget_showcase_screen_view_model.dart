import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_accordions_widget_showcase_screen_state.dart';

/// View model of [MyoroAccordionsWidgetShowcaseScreen].
final class MyoroAccordionsWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroAccordionsWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Builds a title or content [Widget].
  Widget buildTitleOrContentWidget(String item, _) {
    return Text(item);
  }

  /// [_state] getter.
  MyoroAccordionsWidgetShowcaseScreenState get state => _state;

  /// [MyoroAccordionConfiguration.items]
  Set<String> get items {
    return List.generate(faker.randomGenerator.integer(50, min: 20), (int index) => 'Item #$index').toSet();
  }

  /// [MyoroAccordionThemeExtension] of the [MyoroAccordion].
  MyoroAccordionStyle get style {
    return MyoroAccordionThemeExtension(
      itemContentBackgroundColor: state.itemContentBackgroundColor,
      itemContentAnimationDuration: state.itemContentAnimationDuration,
      itemContentAnimationCurve: state.itemContentAnimationCurve,
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
