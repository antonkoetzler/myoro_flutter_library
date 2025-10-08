import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_drawer_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroDrawer].
@immutable
@myoroThemeExtension
class MyoroDrawerThemeExtension extends ThemeExtension<MyoroDrawerThemeExtension>
    with _$MyoroDrawerThemeExtensionMixin {
  const MyoroDrawerThemeExtension({
    this.drawerContentPadding,
    this.drawerPadding,
    this.drawerShape,
    this.titleContentDividerPadding,
    this.titleTextStyle,
  });

  MyoroDrawerThemeExtension.fake()
    : drawerPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      drawerContentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      drawerShape = faker.randomGenerator.boolean() ? myoroFake<RoundedRectangleBorder>() : null,
      titleContentDividerPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      titleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;

  MyoroDrawerThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : drawerPadding = const EdgeInsets.all(kMyoroMultiplier * 5),
      drawerContentPadding = const EdgeInsets.all(kMyoroMultiplier * 2.5),
      drawerShape = RoundedRectangleBorder(
        side: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
        borderRadius: BorderRadius.circular(kMyoroBorderRadius),
      ),
      titleContentDividerPadding = const EdgeInsets.only(top: 4, bottom: 10),
      titleTextStyle = textTheme.titleLarge!;

  /// Padding of [_Drawer].
  final EdgeInsets? drawerPadding;

  /// Padding of the content in [_Drawer].
  final EdgeInsets? drawerContentPadding;

  /// [Drawer.shape] of the drawer.
  final ShapeBorder? drawerShape;

  /// Padding of the [MyoroBasicDivider] in between [_Title] and [MyoroDrawer.child].
  final EdgeInsets? titleContentDividerPadding;

  /// Text style of text in [_Title].
  final TextStyle? titleTextStyle;

  @override
  MyoroDrawerThemeExtension lerp(covariant MyoroDrawerThemeExtension? other, double t) {
    if (other is! MyoroDrawerThemeExtension) return this;
    final thisStyle = MyoroDrawerStyle(
      drawerPadding: drawerPadding,
      drawerContentPadding: drawerContentPadding,
      drawerShape: drawerShape,
      titleContentDividerPadding: titleContentDividerPadding,
      titleTextStyle: titleTextStyle,
    );
    final otherStyle = MyoroDrawerStyle(
      drawerPadding: other.drawerPadding,
      drawerContentPadding: other.drawerContentPadding,
      drawerShape: other.drawerShape,
      titleContentDividerPadding: other.titleContentDividerPadding,
      titleTextStyle: other.titleTextStyle,
    );
    final style = MyoroDrawerStyle.lerp(thisStyle, otherStyle, t);
    return MyoroDrawerThemeExtension(
      drawerPadding: style.drawerPadding,
      drawerContentPadding: style.drawerContentPadding,
      drawerShape: style.drawerShape,
      titleContentDividerPadding: style.titleContentDividerPadding,
      titleTextStyle: style.titleTextStyle,
    );
  }
}
