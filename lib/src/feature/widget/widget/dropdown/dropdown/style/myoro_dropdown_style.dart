import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_style.g.dart';

/// Style of [MyoroDropdown].
@immutable
@myoroModel
class MyoroDropdownStyle extends MyoroMenuStyle with _$MyoroDropdownStyleMixin {
  /// Lerp function.
  static MyoroDropdownStyle lerp(MyoroDropdownStyle? a, MyoroDropdownStyle? b, double t) {
    return MyoroDropdownStyle(
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
      expandingAndOverlaySpacing: lerpDouble(a?.expandingAndOverlaySpacing, b?.expandingAndOverlaySpacing, t),
    );
  }

  /// Default constructor.
  const MyoroDropdownStyle({
    super.constraints,
    super.backgroundColor,
    super.border,
    super.borderRadius,
    super.searchBarPadding,
    super.searchBarInputStyle,
    super.itemBorderRadius,
    super.dialogTextStyle,
    super.dialogTextLoaderPadding,
    super.selectedItemColor,
    this.expandingAndOverlaySpacing,
  });

  /// Fake constructor.
  factory MyoroDropdownStyle.fake() {
    return MyoroDropdownStyle(
      constraints: myoroNullableFake<BoxConstraints>(),
      backgroundColor: myoroNullableFake<Color>(),
      border: myoroNullableFake<BoxBorder>(),
      borderRadius: myoroNullableFake<BorderRadius>(),
      searchBarPadding: myoroNullableFake<EdgeInsets>(),
      searchBarInputStyle: myoroNullableFake<MyoroInputStyleEnum>(),
      itemBorderRadius: myoroNullableFake<BorderRadius>(),
      dialogTextStyle: myoroNullableFake<TextStyle>(),
      dialogTextLoaderPadding: myoroNullableFake<EdgeInsets>(),
      selectedItemColor: myoroNullableFake<Color>(),
      expandingAndOverlaySpacing: myoroNullableFake<double>(),
    );
  }

  /// Spacing for [MyoroDropdownTypeEnum].
  final double? expandingAndOverlaySpacing;
}
