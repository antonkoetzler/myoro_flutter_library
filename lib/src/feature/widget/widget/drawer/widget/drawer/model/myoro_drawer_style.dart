import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_drawer_style.g.dart';

/// Style model of [MyoroDrawer].
@immutable
@myoroModel
class MyoroDrawerStyle with _$MyoroDrawerStyleMixin {
  const MyoroDrawerStyle({
    this.drawerPadding,
    this.drawerContentPadding,
    this.drawerShape,
    this.titleContentDividerPadding,
    this.titleTextStyle,
  });

  // coverage:ignore-start
  MyoroDrawerStyle.fake()
    : drawerPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      drawerContentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      drawerShape = faker.randomGenerator.boolean() ? myoroFake<RoundedRectangleBorder>() : null,
      titleContentDividerPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      titleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null;
  // coverage:ignore-end

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

  /// Copy with.
  MyoroDrawerStyle copyWith({
    EdgeInsets? drawerPadding,
    bool drawerPaddingProvided = true,
    EdgeInsets? drawerContentPadding,
    bool drawerContentPaddingProvided = true,
    ShapeBorder? drawerShape,
    bool drawerShapeProvided = true,
    EdgeInsets? titleContentDividerPadding,
    bool titleContentDividerPaddingProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
  }) {
    return MyoroDrawerStyle(
      drawerPadding: drawerPaddingProvided ? (drawerPadding ?? this.drawerPadding) : null,
      drawerContentPadding: drawerContentPaddingProvided ? (drawerContentPadding ?? this.drawerContentPadding) : null,
      drawerShape: drawerShapeProvided ? (drawerShape ?? this.drawerShape) : null,
      titleContentDividerPadding: titleContentDividerPaddingProvided
          ? (titleContentDividerPadding ?? this.titleContentDividerPadding)
          : null,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? this.titleTextStyle) : null,
    );
  }
}
