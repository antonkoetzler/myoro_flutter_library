import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_drawer_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroDrawer].
@immutable
@myoroThemeExtension
class MyoroDrawerThemeExtension extends ThemeExtension<MyoroDrawerThemeExtension>
    with _$MyoroDrawerThemeExtensionMixin
    implements MyoroDrawerStyle {
  /// Default constructor.
  const MyoroDrawerThemeExtension({
    this.drawerContentPadding,
    this.drawerPadding,
    this.drawerShape,
    this.titleContentDividerPadding,
    this.titleTextStyle,
    this.closeButtonContentPadding,
    this.closeButtonIcon,
  });

  /// Fake constructor.
  MyoroDrawerThemeExtension.fake()
    : drawerPadding = myoroNullableFake<EdgeInsets>(),
      drawerContentPadding = myoroNullableFake<EdgeInsets>(),
      drawerShape = myoroNullableFake<RoundedRectangleBorder>(),
      titleContentDividerPadding = myoroNullableFake<EdgeInsets>(),
      titleTextStyle = myoroNullableFake<TextStyle>(),
      closeButtonContentPadding = myoroNullableFake<EdgeInsets>(),
      closeButtonIcon = myoroNullableFake<IconData>();

  /// Builder constructor.
  MyoroDrawerThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : drawerPadding = const EdgeInsets.all(kMyoroMultiplier * 5),
      drawerContentPadding = const EdgeInsets.all(kMyoroMultiplier * 2.5),
      drawerShape = RoundedRectangleBorder(
        side: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
        borderRadius: BorderRadius.circular(kMyoroBorderRadius),
      ),
      titleContentDividerPadding = const EdgeInsets.only(top: 4, bottom: 10),
      titleTextStyle = textTheme.titleLarge!,
      closeButtonContentPadding = const EdgeInsets.all(kMyoroMultiplier),
      closeButtonIcon = Icons.close;

  /// Padding of [_Drawer].
  @override
  final EdgeInsets? drawerPadding;

  /// Padding of the content in [_Drawer].
  @override
  final EdgeInsets? drawerContentPadding;

  /// [Drawer.shape] of the drawer.
  @override
  final ShapeBorder? drawerShape;

  /// Padding of the [MyoroBasicDivider] in between [_Title] and [MyoroDrawer.child].
  @override
  final EdgeInsets? titleContentDividerPadding;

  /// Text style of text in [_Title].
  @override
  final TextStyle? titleTextStyle;

  /// [MyoroIconTextButtonStyle.contentPadding] of the close button.
  @override
  final EdgeInsets? closeButtonContentPadding;

  /// [IconData] of the close button.
  @override
  final IconData? closeButtonIcon;

  @override
  MyoroDrawerThemeExtension lerp(covariant MyoroDrawerThemeExtension? other, double t) {
    if (other is! MyoroDrawerThemeExtension) return this;
    final style = MyoroDrawerStyle.lerp(this, other, t);
    return MyoroDrawerThemeExtension(
      drawerPadding: style.drawerPadding,
      drawerContentPadding: style.drawerContentPadding,
      drawerShape: style.drawerShape,
      titleContentDividerPadding: style.titleContentDividerPadding,
      titleTextStyle: style.titleTextStyle,
      closeButtonContentPadding: style.closeButtonContentPadding,
      closeButtonIcon: style.closeButtonIcon,
    );
  }
}
