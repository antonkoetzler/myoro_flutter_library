import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_theme_extension.g.dart';

/// [ThemeExtension] of a scrollable.
@immutable
@myoroThemeExtension
final class MyoroScrollableThemeExtension extends ThemeExtension<MyoroScrollableThemeExtension>
    with _$MyoroScrollableThemeExtensionMixin
    implements MyoroScrollableStyle {
  /// Default constructor.
  const MyoroScrollableThemeExtension({this.padding, this.gradientSize, this.gradientColor});

  /// Fake constructor.
  MyoroScrollableThemeExtension.fake()
    : padding = myoroNullableFake<EdgeInsets>(),
      gradientSize = myoroNullableFake<double>(),
      gradientColor = myoroNullableFake<Color>();

  /// Builder constructor.
  MyoroScrollableThemeExtension.builder(ColorScheme colorScheme)
    : padding = null,
      gradientSize = kMyoroMultiplier * 3,
      gradientColor = colorScheme.onPrimary.withValues(alpha: 0.3);

  /// Padding of the [MyoroScrollable].
  @override
  final EdgeInsets? padding;

  /// Gradient size of the [MyoroScrollable].
  @override
  final double? gradientSize;

  /// Gradient color of the [MyoroScrollable].
  @override
  final Color? gradientColor;

  /// Lerp function.
  @override
  MyoroScrollableThemeExtension lerp(MyoroScrollableThemeExtension? other, double t) {
    if (other is! MyoroScrollableThemeExtension) {
      return this;
    }
    final style = MyoroScrollableStyle.lerp(this, other, t);
    return MyoroScrollableThemeExtension(
      padding: style.padding,
      gradientSize: style.gradientSize,
      gradientColor: style.gradientColor,
    );
  }
}
