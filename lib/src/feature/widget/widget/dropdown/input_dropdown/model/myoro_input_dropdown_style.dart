import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_input_dropdown_style.g.dart';

/// Style model of an input dropdown.
@immutable
@myoroModel
class MyoroInputDropdownStyle with _$MyoroInputDropdownStyleMixin {
  static MyoroInputDropdownStyle lerp(MyoroInputDropdownStyle? a, MyoroInputDropdownStyle? b, double t) {
    return MyoroInputDropdownStyle(
      menuBorder: BoxBorder.lerp(a?.menuBorder, b?.menuBorder, t),
      menuBorderRadius: BorderRadius.lerp(a?.menuBorderRadius, b?.menuBorderRadius, t),
    );
  }

  const MyoroInputDropdownStyle({this.menuBorder, this.menuBorderRadius});

  /// [Border] of the menu.
  final BoxBorder? menuBorder;

  /// [BorderRadius] of the menu.
  final BorderRadius? menuBorderRadius;
}
