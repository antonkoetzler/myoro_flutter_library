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
    this.padding,
    this.drawerShape,
    this.titleContentDividerPadding,
    this.titleTextStyle,
    this.closeButtonContentPadding,
    this.closeButtonIcon,
    this.spacing,
  });

  /// Fake constructor.
  MyoroDrawerThemeExtension.fake()
    : padding = myoroNullableFake<EdgeInsets>(),
      drawerShape = myoroNullableFake<RoundedRectangleBorder>(),
      titleContentDividerPadding = myoroNullableFake<EdgeInsets>(),
      titleTextStyle = myoroNullableFake<TextStyle>(),
      closeButtonContentPadding = myoroNullableFake<EdgeInsets>(),
      closeButtonIcon = myoroNullableFake<IconData>(),
      spacing = myoroNullableFake<double>();

  /// Builder constructor.
  MyoroDrawerThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : padding = const EdgeInsets.all(kMyoroMultiplier * 3),
      drawerShape = RoundedRectangleBorder(
        side: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
        borderRadius: BorderRadius.circular(kMyoroBorderRadius),
      ),
      titleContentDividerPadding = const EdgeInsets.only(top: 4, bottom: 10),
      titleTextStyle = textTheme.titleLarge!,
      closeButtonContentPadding = const EdgeInsets.all(kMyoroMultiplier),
      closeButtonIcon = Icons.close,
      spacing = kMyoroMultiplier * 3;

  /// Padding of the content.
  @override
  final EdgeInsets? padding;

  /// [Drawer.shape] of the drawer.
  @override
  final ShapeBorder? drawerShape;

  /// Padding of the [MyoroBasicDivider] in between the title and [MyoroDrawer.child].
  @override
  final EdgeInsets? titleContentDividerPadding;

  /// Text style of text in the title.
  @override
  final TextStyle? titleTextStyle;

  /// [MyoroIconTextButtonStyle.contentPadding] of the close button.
  @override
  final EdgeInsets? closeButtonContentPadding;

  /// [IconData] of the close button.
  @override
  final IconData? closeButtonIcon;

  /// Spacing between the close button and the content.
  @override
  final double? spacing;

  @override
  MyoroDrawerThemeExtension lerp(covariant MyoroDrawerThemeExtension? other, double t) {
    if (other is! MyoroDrawerThemeExtension) return this;
    final style = MyoroDrawerStyle.lerp(this, other, t);
    return MyoroDrawerThemeExtension(
      padding: style.padding,
      drawerShape: style.drawerShape,
      titleContentDividerPadding: style.titleContentDividerPadding,
      titleTextStyle: style.titleTextStyle,
      closeButtonContentPadding: style.closeButtonContentPadding,
      closeButtonIcon: style.closeButtonIcon,
      spacing: style.spacing,
    );
  }
}
