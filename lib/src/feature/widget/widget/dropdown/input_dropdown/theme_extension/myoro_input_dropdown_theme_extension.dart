import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_dropdown_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroInputDropdown].
@immutable
@myoroThemeExtension
class MyoroInputDropdownThemeExtension extends ThemeExtension<MyoroInputDropdownThemeExtension>
    with _$MyoroInputDropdownThemeExtensionMixin
    implements MyoroInputDropdownStyle {
  const MyoroInputDropdownThemeExtension({this.menuBorder, this.menuBorderRadius});

  MyoroInputDropdownThemeExtension.builder(ColorScheme colorScheme)
    : menuBorder = BoxBorder.fromLTRB(
        bottom: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
        left: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
        right: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      ),
      menuBorderRadius = const BorderRadius.only(
        bottomLeft: Radius.circular(kMyoroBorderRadius),
        bottomRight: Radius.circular(kMyoroBorderRadius),
      );

  @override
  final BoxBorder? menuBorder;

  @override
  final BorderRadius? menuBorderRadius;

  @override
  MyoroInputDropdownThemeExtension lerp(MyoroInputDropdownThemeExtension? other, double t) {
    if (other is! MyoroInputDropdownThemeExtension) return this;
    final style = MyoroInputDropdownStyle.lerp(this, other, t);
    return MyoroInputDropdownThemeExtension(menuBorder: style.menuBorder, menuBorderRadius: style.menuBorderRadius);
  }
}
