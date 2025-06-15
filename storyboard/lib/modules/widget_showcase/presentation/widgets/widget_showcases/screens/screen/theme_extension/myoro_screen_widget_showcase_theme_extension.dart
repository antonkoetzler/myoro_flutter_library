import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_screen_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroScreenWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroScreenWidgetShowcaseThemeExtension extends ThemeExtension<MyoroScreenWidgetShowcaseThemeExtension>
    with _$MyoroScreenWidgetShowcaseThemeExtensionMixin {
  const MyoroScreenWidgetShowcaseThemeExtension({required this.appBarMenuButtonIcon});

  MyoroScreenWidgetShowcaseThemeExtension.fake() : appBarMenuButtonIcon = myoroFake<IconData>();

  const MyoroScreenWidgetShowcaseThemeExtension.builder() : appBarMenuButtonIcon = Icons.menu;

  /// [IconData] of [_AppBarMenuButton].
  final IconData appBarMenuButtonIcon;

  @override
  MyoroScreenWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroScreenWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroScreenWidgetShowcaseThemeExtension) return this;
    return copyWith(appBarMenuButtonIcon: myoroLerp(appBarMenuButtonIcon, other.appBarMenuButtonIcon, t));
  }
}
