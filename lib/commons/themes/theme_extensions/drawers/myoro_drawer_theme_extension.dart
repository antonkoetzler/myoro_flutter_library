import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroDrawer].
final class MyoroDrawerThemeExtension extends ThemeExtension<MyoroDrawerThemeExtension> {
  /// Padding of [_Drawer].
  final EdgeInsets drawerPadding;

  /// Padding of the content in [_Drawer].
  final EdgeInsets drawerContentPadding;

  /// [Drawer.shape] of the drawer.
  final ShapeBorder drawerShape;

  /// Padding of the [MyoroBasicDivider] in between [_Title] and [MyoroDrawer.child].
  final EdgeInsets titleContentDividerPadding;

  /// Text style of text in [_Title].
  final TextStyle titleTextStyle;

  /// Icon of the drawer on the left for [_CloseButton].
  final IconData closeButtonDrawerIcon;

  /// Icon of the drawer on the right for [_CloseButton].
  final IconData closeButtonEndDrawerIcon;

  /// [MyoroIconTextHoverButton.backgroundColor] of [_CloseButton].
  final Color closeButtonBackgroundColor;

  /// [MyoroIconTextHoverButton.bordered] of [_CloseButton].
  final bool closeButtonBordered;

  const MyoroDrawerThemeExtension({
    required this.drawerContentPadding,
    required this.drawerPadding,
    required this.drawerShape,
    required this.titleContentDividerPadding,
    required this.titleTextStyle,
    required this.closeButtonDrawerIcon,
    required this.closeButtonEndDrawerIcon,
    required this.closeButtonBackgroundColor,
    required this.closeButtonBordered,
  });

  @override
  MyoroDrawerThemeExtension copyWith({
    EdgeInsets? drawerPadding,
    EdgeInsets? drawerContentPadding,
    ShapeBorder? drawerShape,
    EdgeInsets? titleContentDividerPadding,
    TextStyle? titleTextStyle,
    IconData? closeButtonDrawerIcon,
    IconData? closeButtonEndDrawerIcon,
    Color? closeButtonBackgroundColor,
    bool? closeButtonBordered,
  }) {
    return MyoroDrawerThemeExtension(
      drawerPadding: drawerPadding ?? this.drawerPadding,
      drawerContentPadding: drawerContentPadding ?? this.drawerContentPadding,
      drawerShape: drawerShape ?? this.drawerShape,
      titleContentDividerPadding: titleContentDividerPadding ?? this.titleContentDividerPadding,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      closeButtonDrawerIcon: closeButtonDrawerIcon ?? this.closeButtonDrawerIcon,
      closeButtonEndDrawerIcon: closeButtonEndDrawerIcon ?? this.closeButtonEndDrawerIcon,
      closeButtonBackgroundColor: closeButtonBackgroundColor ?? this.closeButtonBackgroundColor,
      closeButtonBordered: closeButtonBordered ?? this.closeButtonBordered,
    );
  }

  @override
  ThemeExtension<MyoroDrawerThemeExtension> lerp(
    covariant ThemeExtension<MyoroDrawerThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDrawerThemeExtension) return this;
    return copyWith(
      drawerPadding: EdgeInsets.lerp(drawerPadding, other.drawerPadding, t),
      drawerContentPadding: EdgeInsets.lerp(drawerContentPadding, other.drawerContentPadding, t),
      drawerShape: ShapeBorder.lerp(drawerShape, other.drawerShape, t),
      titleContentDividerPadding: EdgeInsets.lerp(titleContentDividerPadding, other.titleContentDividerPadding, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      closeButtonDrawerIcon: myoroLerp(closeButtonDrawerIcon, other.closeButtonDrawerIcon, t),
      closeButtonEndDrawerIcon: myoroLerp(closeButtonEndDrawerIcon, other.closeButtonEndDrawerIcon, t),
      closeButtonBackgroundColor: Color.lerp(closeButtonBackgroundColor, other.closeButtonBackgroundColor, t),
      closeButtonBordered: myoroLerp(closeButtonBordered, other.closeButtonBordered, t),
    );
  }
}
