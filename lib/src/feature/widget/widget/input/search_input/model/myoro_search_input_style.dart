import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_style.g.dart';

/// Style model of [MyoroSearchInput].
@immutable
@myoroModel
class MyoroSearchInputStyle with _$MyoroSearchInputStyleMixin {
  static MyoroSearchInputStyle lerp(MyoroSearchInputStyle? a, MyoroSearchInputStyle? b, double t) {
    return MyoroSearchInputStyle(
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      searchButtonIcon: myoroFallbackLerp(a?.searchButtonIcon, b?.searchButtonIcon, t),
      searchButtonLoadingSize: lerpDouble(a?.searchButtonLoadingSize, b?.searchButtonLoadingSize, t),
      menuBorder: myoroFallbackLerp(a?.menuBorder, b?.menuBorder, t),
    );
  }

  const MyoroSearchInputStyle({this.spacing, this.searchButtonIcon, this.searchButtonLoadingSize, this.menuBorder});

  // coverage:ignore-start
  factory MyoroSearchInputStyle.fake() {
    return MyoroSearchInputStyle(
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      searchButtonIcon: faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      searchButtonLoadingSize: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      menuBorder: faker.randomGenerator.boolean() ? myoroFake<BoxBorder>() : null,
    );
  }
  // coverage:ignore-end

  /// Spacing in between the [MyoroInput] & [_SearchSection].
  final double? spacing;

  /// Icon of [_SearchButton].
  final IconData? searchButtonIcon;

  /// Size of the [MyoroCircularLoader] in [_SearchButton].
  final double? searchButtonLoadingSize;

  /// [Border] of the [MyoroMenu].
  final BoxBorder? menuBorder;
}
