import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_screen_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroScreenWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroScreenWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroScreenWidgetShowcaseScreenThemeExtension>
    with _$MyoroScreenWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroScreenWidgetShowcaseScreenThemeExtension({required this.appBarMenuButtonIcon});

  MyoroScreenWidgetShowcaseScreenThemeExtension.fake() : appBarMenuButtonIcon = myoroFake<IconData>();

  const MyoroScreenWidgetShowcaseScreenThemeExtension.builder() : appBarMenuButtonIcon = Icons.menu;

  /// [IconData] of [_AppBarMenuButton].
  final IconData appBarMenuButtonIcon;

  @override
  MyoroScreenWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroScreenWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroScreenWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(appBarMenuButtonIcon: myoroLerp(appBarMenuButtonIcon, other.appBarMenuButtonIcon, t));
  }
}
