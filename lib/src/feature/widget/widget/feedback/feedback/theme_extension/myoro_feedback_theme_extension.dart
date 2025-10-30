import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_feedback_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFeedback].
@immutable
@myoroThemeExtension
class MyoroFeedbackThemeExtension extends ThemeExtension<MyoroFeedbackThemeExtension>
    with _$MyoroFeedbackThemeExtensionMixin
    implements MyoroFeedbackStyle {
  /// Default constructor.
  const MyoroFeedbackThemeExtension({this.spacing, this.iconSize, this.titleTextStyle, this.subtitleTextStyle});

  /// Fake constructor.
  MyoroFeedbackThemeExtension.fake()
    : spacing = myoroNullableFake<double>(),
      iconSize = myoroNullableFake<double>(),
      titleTextStyle = myoroNullableFake<TextStyle>(),
      subtitleTextStyle = myoroNullableFake<TextStyle>();

  MyoroFeedbackThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      iconSize = kMyoroMultiplier * 30,
      titleTextStyle = textTheme.titleLarge,
      subtitleTextStyle = textTheme.bodyMedium;

  /// Spacing between the icon/title/subtitle and the action button.
  @override
  final double? spacing;

  /// Size of the icon.
  @override
  final double? iconSize;

  /// [TextStyle] of the title.
  @override
  final TextStyle? titleTextStyle;

  /// [TextStyle] of the subtitle.
  @override
  final TextStyle? subtitleTextStyle;

  @override
  MyoroFeedbackThemeExtension lerp(covariant MyoroFeedbackThemeExtension? other, double t) {
    if (other is! MyoroFeedbackThemeExtension) return this;
    final style = MyoroFeedbackStyle.lerp(this, other, t);
    return MyoroFeedbackThemeExtension(
      spacing: style.spacing,
      iconSize: style.iconSize,
      titleTextStyle: style.titleTextStyle,
      subtitleTextStyle: style.subtitleTextStyle,
    );
  }
}
