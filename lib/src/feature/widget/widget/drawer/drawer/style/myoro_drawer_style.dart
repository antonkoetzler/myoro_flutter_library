import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_drawer_style.g.dart';

/// Style model of [MyoroDrawer].
@immutable
@myoroModel
class MyoroDrawerStyle with _$MyoroDrawerStyleMixin {
  /// Lerp function.
  static MyoroDrawerStyle lerp(MyoroDrawerStyle? a, MyoroDrawerStyle? b, double t) {
    return MyoroDrawerStyle(
      padding: EdgeInsets.lerp(a?.padding, b?.padding, t),
      spacing: myoroFallbackLerp(a?.spacing, b?.spacing, t),
      drawerShape: myoroFallbackLerp(a?.drawerShape, b?.drawerShape, t),
      titleContentDividerPadding: EdgeInsets.lerp(a?.titleContentDividerPadding, b?.titleContentDividerPadding, t),
      titleTextStyle: TextStyle.lerp(a?.titleTextStyle, b?.titleTextStyle, t),
      closeButtonContentPadding: EdgeInsets.lerp(a?.closeButtonContentPadding, b?.closeButtonContentPadding, t),
      closeButtonIcon: myoroFallbackLerp(a?.closeButtonIcon, b?.closeButtonIcon, t),
    );
  }

  /// Default constructor.
  const MyoroDrawerStyle({
    this.padding,
    this.spacing,
    this.drawerShape,
    this.titleContentDividerPadding,
    this.titleTextStyle,
    this.closeButtonContentPadding,
    this.closeButtonIcon,
  });

  /// Fake constructor.
  factory MyoroDrawerStyle.fake() {
    return MyoroDrawerStyle(
      padding: myoroNullableFake<EdgeInsets>(),
      drawerShape: myoroNullableFake<ShapeBorder>(),
      titleContentDividerPadding: myoroNullableFake<EdgeInsets>(),
      titleTextStyle: myoroNullableFake<TextStyle>(),
      closeButtonContentPadding: myoroNullableFake<EdgeInsets>(),
      closeButtonIcon: myoroNullableFake<IconData>(),
    );
  }

  /// Padding of [_Drawer].
  final EdgeInsets? padding;

  /// Spacing between the close button and the content.
  final double? spacing;

  /// [Drawer.shape] of the drawer.
  final ShapeBorder? drawerShape;

  /// Padding of the [MyoroBasicDivider] in between [_Title] and [MyoroDrawer.child].
  final EdgeInsets? titleContentDividerPadding;

  /// Text style of text in [_Title].
  final TextStyle? titleTextStyle;

  /// [MyoroIconTextButtonStyle.contentPadding] of the close button.
  final EdgeInsets? closeButtonContentPadding;

  /// [IconData] of the close button.
  final IconData? closeButtonIcon;
}
