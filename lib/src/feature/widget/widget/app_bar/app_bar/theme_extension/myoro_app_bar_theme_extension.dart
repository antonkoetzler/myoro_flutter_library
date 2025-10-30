import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_app_bar_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroAppBar].
@immutable
@myoroThemeExtension
class MyoroAppBarThemeExtension extends ThemeExtension<MyoroAppBarThemeExtension>
    with _$MyoroAppBarThemeExtensionMixin
    implements MyoroAppBarStyle {
  /// Default constructor.
  const MyoroAppBarThemeExtension({this.backgroundColor, this.contentPadding});

  /// Fake constructor.
  MyoroAppBarThemeExtension.fake()
    : backgroundColor = myoroNullableFake<Color>(),
      contentPadding = myoroNullableFake<EdgeInsets>();

  MyoroAppBarThemeExtension.builder(ColorScheme colorScheme)
    : backgroundColor = colorScheme.primary,
      contentPadding = const EdgeInsets.all(kMyoroMultiplier * 2.5);

  @override
  final Color? backgroundColor;

  @override
  final EdgeInsets? contentPadding;

  @override
  MyoroAppBarThemeExtension lerp(covariant MyoroAppBarThemeExtension? other, double t) {
    if (other is! MyoroAppBarThemeExtension) return this;
    final style = MyoroAppBarStyle.lerp(this, other, t);
    return MyoroAppBarThemeExtension(backgroundColor: style.backgroundColor, contentPadding: style.contentPadding);
  }
}
