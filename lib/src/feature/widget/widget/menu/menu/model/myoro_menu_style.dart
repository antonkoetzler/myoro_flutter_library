import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_style.g.dart';

/// Style model of [MyoroMenu].
@immutable
@myoroModel
class MyoroMenuStyle with _$MyoroMenuStyleMixin {
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
  });

  // coverage:ignore-start
  factory MyoroMenuStyle.fake() {
    return MyoroMenuStyle(
      constraints: faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null,
      border: faker.randomGenerator.boolean() ? myoroFake<BoxBorder>() : null,
      backgroundColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      searchBarPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      searchBarInputStyle: faker.randomGenerator.boolean() ? MyoroInputStyleEnum.fake() : null,
      itemBorderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      dialogTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      dialogTextLoaderPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
    );
  }
  // coverage:ignore-end

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
}
