import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_list_scrollable_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroListScrollable].
@immutable
@myoroThemeExtension
final class MyoroListScrollableThemeExtension extends ThemeExtension<MyoroListScrollableThemeExtension>
    with _$MyoroListScrollableThemeExtensionMixin
    implements MyoroListScrollableStyle {
  /// Default constructor.
  const MyoroListScrollableThemeExtension({
    this.padding,
    this.gradientSize,
    this.gradientColor,
    this.spacing,
    this.emptyFeedbackStyle,
  });

  /// Fake constructor.
  MyoroListScrollableThemeExtension.fake()
    : padding = myoroNullableFake<EdgeInsets>(),
      gradientSize = myoroNullableFake<double>(),
      gradientColor = myoroNullableFake<Color>(),
      spacing = myoroNullableFake<double>(),
      emptyFeedbackStyle = myoroNullableFake<MyoroFeedbackStyle>();

  /// Builder constructor.
  MyoroListScrollableThemeExtension.builder(ColorScheme colorScheme)
    : padding = null,
      gradientSize = kMyoroMultiplier * 3,
      gradientColor = colorScheme.onPrimary.withValues(alpha: 0.3),
      spacing = kMyoroMultiplier,
      emptyFeedbackStyle = const MyoroFeedbackStyle(iconStyle: MyoroIconStyle(size: kMyoroMultiplier * 20));

  /// Padding of the [MyoroListScrollable].
  @override
  final EdgeInsets? padding;

  /// Gradient size of the [MyoroListScrollable].
  @override
  final double? gradientSize;

  /// Gradient color of the [MyoroListScrollable].
  @override
  final Color? gradientColor;

  /// Spacing between the items.
  @override
  final double? spacing;

  /// Style of the empty feedback.
  @override
  final MyoroFeedbackStyle? emptyFeedbackStyle;

  /// Lerp function.
  @override
  MyoroListScrollableThemeExtension lerp(MyoroListScrollableThemeExtension? other, double t) {
    if (other is! MyoroListScrollableThemeExtension) {
      return this;
    }
    final style = MyoroListScrollableStyle.lerp(this, other, t);
    return MyoroListScrollableThemeExtension(
      padding: style.padding,
      gradientSize: style.gradientSize,
      gradientColor: style.gradientColor,
      spacing: style.spacing,
      emptyFeedbackStyle: style.emptyFeedbackStyle,
    );
  }
}
