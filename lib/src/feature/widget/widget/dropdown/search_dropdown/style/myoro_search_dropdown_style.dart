import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_dropdown_style.g.dart';

/// Style model of [MyoroSearchDropdown].
@immutable
@myoroModel
class MyoroSearchDropdownStyle with _$MyoroSearchDropdownStyleMixin {
  /// Lerp function.
  static MyoroSearchDropdownStyle lerp(MyoroSearchDropdownStyle? a, MyoroSearchDropdownStyle? b, double t) {
    return MyoroSearchDropdownStyle(
      searchButtonIconSize: lerpDouble(a?.searchButtonIconSize, b?.searchButtonIconSize, t),
      dropdownConstraints: BoxConstraints.lerp(a?.dropdownConstraints, b?.dropdownConstraints, t),
      searchButtonIcon: myoroFallbackLerp(a?.searchButtonIcon, b?.searchButtonIcon, t),
    );
  }

  /// Default constructor.
  const MyoroSearchDropdownStyle({this.searchButtonIconSize, this.dropdownConstraints, this.searchButtonIcon});

  /// [MyoroIconStyle] of the search button.
  final double? searchButtonIconSize;

  /// [BoxConstraints] of the dropdown.
  final BoxConstraints? dropdownConstraints;

  /// [IconData] of the search button.
  final IconData? searchButtonIcon;
}
