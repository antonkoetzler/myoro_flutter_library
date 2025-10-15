import 'package:faker/faker.dart' hide Color;
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
      drawerPadding: EdgeInsets.lerp(a?.drawerPadding, b?.drawerPadding, t),
      drawerContentPadding: EdgeInsets.lerp(a?.drawerContentPadding, b?.drawerContentPadding, t),
      drawerShape: myoroFallbackLerp(a?.drawerShape, b?.drawerShape, t),
      titleContentDividerPadding: EdgeInsets.lerp(a?.titleContentDividerPadding, b?.titleContentDividerPadding, t),
      titleTextStyle: TextStyle.lerp(a?.titleTextStyle, b?.titleTextStyle, t),
      closeButtonContentPadding: EdgeInsets.lerp(a?.closeButtonContentPadding, b?.closeButtonContentPadding, t),
    );
  }

  /// Default constructor.
  const MyoroDrawerStyle({
    this.drawerPadding,
    this.drawerContentPadding,
    this.drawerShape,
    this.titleContentDividerPadding,
    this.titleTextStyle,
    this.closeButtonContentPadding,
  });

  /// Fake constructor.
  factory MyoroDrawerStyle.fake() {
    return MyoroDrawerStyle(
      drawerPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      drawerContentPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      drawerShape: faker.randomGenerator.boolean() ? myoroFake<ShapeBorder>() : null,
      titleContentDividerPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      titleTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      closeButtonContentPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
    );
  }

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

  /// [MyoroIconTextButtonStyle.contentPadding] of the close button.
  final EdgeInsets? closeButtonContentPadding;
}
