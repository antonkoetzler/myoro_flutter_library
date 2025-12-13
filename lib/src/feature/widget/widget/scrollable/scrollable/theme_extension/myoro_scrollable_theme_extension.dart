import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_scrollable_theme_extension.g.dart';

/// Theme extension of [MyoroScrollable].
@immutable
@myoroThemeExtension
class MyoroScrollableThemeExtension extends ThemeExtension<MyoroScrollableThemeExtension>
    with _$MyoroScrollableThemeExtensionMixin
    implements MyoroScrollableStyle {
  /// Default constructor.
  const MyoroScrollableThemeExtension({this.padding, this.gradientDecoration});

  /// Fake constructor.
  MyoroScrollableThemeExtension.fake()
    : padding = myoroNullableFake<EdgeInsets>(),
      gradientDecoration = myoroNullableFake<BoxDecoration>();

  /// Builder constructor.
  MyoroScrollableThemeExtension.builder(ColorScheme colorScheme)
    : padding = const EdgeInsets.all(kMyoroMultiplier),
      gradientDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorScheme.onPrimary,
            colorScheme.onPrimary.withValues(alpha: 0),
            colorScheme.onPrimary.withValues(alpha: 0),
            colorScheme.onPrimary,
          ],
          stops: const [0, 0.1, 0.9, 1],
        ),
      );

  /// [SingleChildScrollView.padding].
  @override
  final EdgeInsets? padding;

  /// Decoration of the gradient.
  @override
  final BoxDecoration? gradientDecoration;

  /// Lerp function.
  @override
  MyoroScrollableThemeExtension lerp(MyoroScrollableThemeExtension? other, double t) {
    if (other is! MyoroScrollableThemeExtension) return this;
    final style = MyoroScrollableStyle.lerp(this, other, t);
    return MyoroScrollableThemeExtension(padding: style.padding);
  }
}
