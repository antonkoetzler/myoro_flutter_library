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

  /// [MyoroAccordionThemeExtension] of the [MyoroAccordion].
  MyoroAccordionThemeExtension buildStyle(BuildContext context) {
    final accordionThemeExtension = MyoroAccordionThemeExtension.builder(
      context.isDarkMode,
      context.colorScheme,
      context.textTheme,
    );

    return accordionThemeExtension.copyWith(
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

  /// Builds a title or content [Widget].
  Widget _buildTitleOrContentWidget(String item, _) {
    return Text(item);
  }

  /// [MyoroAccordionConfiguration] of the [MyoroSingleAccordion].
  MyoroSingleAccordionConfiguration<String> get singleConfiguration {
    return MyoroSingleAccordionConfiguration(
      thumbVisibility: state.thumbVisibility,
      titleBuilder: _buildTitleOrContentWidget,
      contentBuilder: _buildTitleOrContentWidget,
      items: _items,
    );
  }

  /// [MyoroAccordionConfiguration] of the [MyoroMultiAccordion].
  MyoroMultiAccordionConfiguration<String> get multiConfiguration {
    return MyoroMultiAccordionConfiguration(
      thumbVisibility: state.thumbVisibility,
      titleBuilder: _buildTitleOrContentWidget,
      contentBuilder: _buildTitleOrContentWidget,
      items: _items,
    );
  }

  /// [MyoroAccordionConfiguration.items]
  Set<String> get _items {
    return List.generate(faker.randomGenerator.integer(50, min: 20), (int index) => 'Item #$index').toSet();
  }
}
