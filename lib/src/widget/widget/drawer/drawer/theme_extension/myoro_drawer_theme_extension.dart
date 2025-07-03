import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_drawer_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroDrawer].
@immutable
@myoroThemeExtension
class MyoroDrawerThemeExtension extends ThemeExtension<MyoroDrawerThemeExtension>
    with _$MyoroDrawerThemeExtensionMixin {
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

  const MyoroDrawerThemeExtension({
    required this.drawerContentPadding,
    required this.drawerPadding,
    required this.drawerShape,
    required this.titleContentDividerPadding,
    required this.titleTextStyle,
    required this.closeButtonDrawerIcon,
    required this.closeButtonEndDrawerIcon,
  });

  MyoroDrawerThemeExtension.fake()
    : drawerPadding = myoroFake<EdgeInsets>(),
      drawerContentPadding = myoroFake<EdgeInsets>(),
      drawerShape = myoroFake<RoundedRectangleBorder>(),
      titleContentDividerPadding = myoroFake<EdgeInsets>(),
      titleTextStyle = myoroFake<TextStyle>(),
      closeButtonDrawerIcon = myoroFake<IconData>(),
      closeButtonEndDrawerIcon = myoroFake<IconData>();

  MyoroDrawerThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : drawerPadding = const EdgeInsets.all(20),
      drawerContentPadding = const EdgeInsets.all(10),
      drawerShape = RoundedRectangleBorder(
        side: BorderSide(width: kMyoroBorderLength, color: colorScheme.onPrimary),
        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      titleContentDividerPadding = const EdgeInsets.only(top: 4, bottom: 10),
      titleTextStyle = textTheme.titleLarge!,
      closeButtonDrawerIcon = Icons.keyboard_arrow_left,
      closeButtonEndDrawerIcon = Icons.keyboard_arrow_right;

  @override
  MyoroDrawerThemeExtension lerp(covariant ThemeExtension<MyoroDrawerThemeExtension>? other, double t) {
    if (other is! MyoroDrawerThemeExtension) return this;
    return copyWith(
      drawerPadding: EdgeInsets.lerp(drawerPadding, other.drawerPadding, t),
      drawerContentPadding: EdgeInsets.lerp(drawerContentPadding, other.drawerContentPadding, t),
      drawerShape: ShapeBorder.lerp(drawerShape, other.drawerShape, t),
      titleContentDividerPadding: EdgeInsets.lerp(titleContentDividerPadding, other.titleContentDividerPadding, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      closeButtonDrawerIcon: myoroLerp(closeButtonDrawerIcon, other.closeButtonDrawerIcon, t),
      closeButtonEndDrawerIcon: myoroLerp(closeButtonEndDrawerIcon, other.closeButtonEndDrawerIcon, t),
    );
  }
}
