import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_feedback_widget_showcase_screen_state.dart';

/// View model of [MyoroFeedbackWidgetShowcaseScreen].
final class MyoroFeedbackWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroFeedbackWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [TextWidgetShowcaseOptionConfiguration.textOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.titleTextStyle].
  void titleTextStyleTextOnChanged(String text) {
    _state.title = text;
  }

  /// [TextWidgetShowcaseOptionConfiguration.maxLinesOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.titleTextStyle].
  void titleTextStyleMaxLinesOnChanged(int? maxLines) {
    _state.titleTextStyle =
        _state.titleTextStyle?.copyWith(maxLines: maxLines) ??
        MyoroTextStyle(maxLines: maxLines ?? MyoroTextStyle.maxLinesDefaultValue);
  }

  /// [TextWidgetShowcaseOptionConfiguration.overflowOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.titleTextStyle].
  void titleTextStyleOverflowOnChanged(TextOverflow? overflow) {
    _state.titleTextStyle =
        _state.titleTextStyle?.copyWith(overflow: overflow) ??
        MyoroTextStyle(overflow: overflow ?? MyoroTextStyle.overflowDefaultValue);
  }

  /// [TextWidgetShowcaseOptionConfiguration.alignmentOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.titleTextStyle].
  void titleTextStyleAlignmentOnChanged(TextAlign? alignment) {
    _state.titleTextStyle =
        _state.titleTextStyle?.copyWith(alignment: alignment) ??
        MyoroTextStyle(alignment: alignment ?? MyoroTextStyle.alignmentDefaultValue);
  }

  /// [TextWidgetShowcaseOptionConfiguration.textOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.subtitleTextStyle].
  void subtitleTextStyleTextOnChanged(String text) {
    _state.subtitle = text;
  }

  /// [TextWidgetShowcaseOptionConfiguration.maxLinesOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.subtitleTextStyle].
  void subtitleTextStyleMaxLinesOnChanged(int? maxLines) {
    _state.subtitleTextStyle =
        _state.subtitleTextStyle?.copyWith(maxLines: maxLines) ??
        MyoroTextStyle(maxLines: maxLines ?? MyoroTextStyle.maxLinesDefaultValue);
  }

  /// [TextWidgetShowcaseOptionConfiguration.overflowOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.subtitleTextStyle].
  void subtitleTextStyleOverflowOnChanged(TextOverflow? overflow) {
    _state.subtitleTextStyle =
        _state.subtitleTextStyle?.copyWith(overflow: overflow) ??
        MyoroTextStyle(overflow: overflow ?? MyoroTextStyle.overflowDefaultValue);
  }

  /// [TextWidgetShowcaseOptionConfiguration.alignmentOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.subtitleTextStyle].
  void subtitleTextStyleAlignmentOnChanged(TextAlign? alignment) {
    _state.subtitleTextStyle =
        _state.subtitleTextStyle?.copyWith(alignment: alignment) ??
        MyoroTextStyle(alignment: alignment ?? MyoroTextStyle.alignmentDefaultValue);
  }

  /// [IconWidgetShowcaseOptionConfiguration.iconOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.iconStyle].
  void iconStyleIconOnChanged(IconData? icon) {
    _state.icon = icon ?? Icons.info;
  }

  /// [IconWidgetShowcaseOptionConfiguration.iconSizeOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.iconStyle].
  void iconStyleSizeOnChanged(double? size) {
    _state.iconStyle = _state.iconStyle?.copyWith(size: size) ?? MyoroIconStyle(size: size);
  }

  /// [IconWidgetShowcaseOptionConfiguration.iconSizeCheckboxOnChanged]
  /// of [MyoroFeedbackWidgetShowcaseScreenState.iconStyle].
  void iconStyleSizeCheckboxOnChanged(bool enabled, double? size) {
    _state.iconStyle = enabled ? (_state.iconStyle?.copyWith(size: size) ?? MyoroIconStyle(size: size)) : null;
  }

  /// [_state] getter.
  MyoroFeedbackWidgetShowcaseScreenState get state {
    return _state;
  }
}
