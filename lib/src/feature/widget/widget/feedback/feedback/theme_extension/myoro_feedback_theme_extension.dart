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
  const MyoroFeedbackThemeExtension({this.spacing, this.iconStyle, this.titleTextStyle, this.subtitleTextStyle});

  /// Fake constructor.
  MyoroFeedbackThemeExtension.fake()
    : spacing = myoroNullableFake<double>(),
      iconStyle = myoroNullableFake<MyoroIconStyle>(),
      titleTextStyle = myoroNullableFake<MyoroTextStyle>(),
      subtitleTextStyle = myoroNullableFake<MyoroTextStyle>();

  MyoroFeedbackThemeExtension.builder(TextTheme textTheme)
    : spacing = kMyoroMultiplier * 2,
      iconStyle = const MyoroIconStyle(size: kMyoroMultiplier * 30),
      titleTextStyle = MyoroTextStyle(style: textTheme.titleMedium),
      subtitleTextStyle = MyoroTextStyle(style: textTheme.bodyMedium, maxLines: 10);

  /// Spacing between the icon/title/subtitle and the action button.
  @override
  final double? spacing;

  /// Size of the icon.
  @override
  final MyoroIconStyle? iconStyle;

  /// [TextStyle] of the title.
  @override
  final MyoroTextStyle? titleTextStyle;

  /// [TextStyle] of the subtitle.
  @override
  final MyoroTextStyle? subtitleTextStyle;

  @override
  MyoroFeedbackThemeExtension lerp(covariant MyoroFeedbackThemeExtension? other, double t) {
    if (other is! MyoroFeedbackThemeExtension) return this;
    final style = MyoroFeedbackStyle.lerp(this, other, t);
    return MyoroFeedbackThemeExtension(
      spacing: style.spacing,
      iconStyle: style.iconStyle,
      titleTextStyle: MyoroTextStyle.lerp(style.titleTextStyle, other.titleTextStyle, t),
      subtitleTextStyle: MyoroTextStyle.lerp(style.subtitleTextStyle, other.subtitleTextStyle, t),
    );
  }
}
