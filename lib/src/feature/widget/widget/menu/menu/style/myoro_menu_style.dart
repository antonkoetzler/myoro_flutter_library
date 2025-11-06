import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_style.g.dart';

/// Style model of [MyoroMenu].
@immutable
@myoroModel
class MyoroMenuStyle with _$MyoroMenuStyleMixin {
  /// Lerp function.
  static MyoroMenuStyle lerp(MyoroMenuStyle? a, MyoroMenuStyle? b, double t) {
    return MyoroMenuStyle(
      constraints: BoxConstraints.lerp(a?.constraints, b?.constraints, t),
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      border: BoxBorder.lerp(a?.border, b?.border, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      searchBarPadding: EdgeInsets.lerp(a?.searchBarPadding, b?.searchBarPadding, t),
      searchBarInputStyle: myoroFallbackLerp(a?.searchBarInputStyle, b?.searchBarInputStyle, t),
      itemBorderRadius: BorderRadius.lerp(a?.itemBorderRadius, b?.itemBorderRadius, t),
      dialogTextStyle: TextStyle.lerp(a?.dialogTextStyle, b?.dialogTextStyle, t),
      dialogTextLoaderPadding: EdgeInsets.lerp(a?.dialogTextLoaderPadding, b?.dialogTextLoaderPadding, t),
      selectedItemColor: Color.lerp(a?.selectedItemColor, b?.selectedItemColor, t),
      itemsSectionSpacing: lerpDouble(a?.itemsSectionSpacing, b?.itemsSectionSpacing, t),
    );
  }

  /// Default constructor.
  const MyoroMenuStyle({
    this.constraints,
    this.backgroundColor,
    this.border,
    this.borderRadius,
    this.searchBarPadding,
    this.searchBarInputStyle,
    this.itemBorderRadius,
    this.dialogTextStyle,
    this.dialogTextLoaderPadding,
    this.selectedItemColor,
    this.itemsSectionSpacing,
  });

  /// Fake constructor.
  factory MyoroMenuStyle.fake() {
    return MyoroMenuStyle(
      constraints: myoroNullableFake<BoxConstraints>(),
      border: myoroNullableFake<BoxBorder>(),
      backgroundColor: myoroNullableFake<Color>(),
      borderRadius: myoroNullableFake<BorderRadius>(),
      searchBarPadding: myoroNullableFake<EdgeInsets>(),
      searchBarInputStyle: faker.randomGenerator.boolean() ? MyoroInputStyleEnum.fake() : null,
      itemBorderRadius: myoroNullableFake<BorderRadius>(),
      dialogTextStyle: myoroNullableFake<TextStyle>(),
      dialogTextLoaderPadding: myoroNullableFake<EdgeInsets>(),
      selectedItemColor: myoroNullableFake<Color>(),
      itemsSectionSpacing: myoroNullableFake<double>(),
    );
  }

  /// Constraints of the menu.
  final BoxConstraints? constraints;

  /// Background color of the menu.
  final Color? backgroundColor;

  /// Border of the menu.
  final BoxBorder? border;

  /// Border radius of the menu.
  final BorderRadius? borderRadius;

  /// Padding of [_SearchBar].
  final EdgeInsets? searchBarPadding;

  /// [MyoroInputStyleEnum] of [_SearchBar].
  final MyoroInputStyleEnum? searchBarInputStyle;

  /// [BorderRadius] of [_Item].
  final BorderRadius? itemBorderRadius;

  /// Text style of [_EmptyMenuDialog].
  final TextStyle? dialogTextStyle;

  /// [EdgeInsets] of [_DialogText] & [_Loader].
  final EdgeInsets? dialogTextLoaderPadding;

  /// [Color] of a selected item.
  final Color? selectedItemColor;

  /// Items section spacing.
  final double? itemsSectionSpacing;
}
