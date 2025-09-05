import 'package:faker/faker.dart';
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

  // coverage:ignore-start
  MyoroDrawerThemeExtension.fake()
    : drawerPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      drawerContentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      drawerShape = faker.randomGenerator.boolean() ? myoroFake<RoundedRectangleBorder>() : null,
      titleContentDividerPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      titleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;
  // coverage:ignore-end

  MyoroDrawerThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : drawerPadding = const EdgeInsets.all(20),
      drawerContentPadding = const EdgeInsets.all(10),
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
  MyoroDrawerThemeExtension lerp(covariant ThemeExtension<MyoroDrawerThemeExtension>? other, double t) {
    if (other is! MyoroDrawerThemeExtension) return this;

    final drawerPadding = EdgeInsets.lerp(this.drawerPadding, other.drawerPadding, t);
    final drawerContentPadding = EdgeInsets.lerp(this.drawerContentPadding, other.drawerContentPadding, t);
    final drawerShape = ShapeBorder.lerp(this.drawerShape, other.drawerShape, t);
    final titleContentDividerPadding = EdgeInsets.lerp(
      this.titleContentDividerPadding,
      other.titleContentDividerPadding,
      t,
    );
    final titleTextStyle = TextStyle.lerp(this.titleTextStyle, other.titleTextStyle, t);

    return copyWith(
      drawerPadding: drawerPadding,
      drawerPaddingProvided: drawerPadding != null,
      drawerContentPadding: drawerContentPadding,
      drawerContentPaddingProvided: drawerContentPadding != null,
      drawerShape: drawerShape,
      drawerShapeProvided: drawerShape != null,
      titleContentDividerPadding: titleContentDividerPadding,
      titleContentDividerPaddingProvided: titleContentDividerPadding != null,
      titleTextStyle: titleTextStyle,
      titleTextStyleProvided: titleTextStyle != null,
    );
  }
}
