import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_feedback_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFeedbackWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroFeedbackWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroFeedbackWidgetShowcaseScreenThemeExtension>
    with _$MyoroFeedbackWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroFeedbackWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-file
  const MyoroFeedbackWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroFeedbackWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroFeedbackWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroFeedbackWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
