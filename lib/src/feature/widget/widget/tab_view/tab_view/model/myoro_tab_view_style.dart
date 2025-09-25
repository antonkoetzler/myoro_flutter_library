import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tab_view_style.g.dart';

/// Style model of [MyoroTabView].
@immutable
@myoroModel
class MyoroTabViewStyle with _$MyoroTabViewStyleMixin {
  const MyoroTabViewStyle({
    this.tabButtonBorderRadius,
    this.tabButtonIdleColor,
    this.tabButtonHoverColor,
    this.tabButtonTapColor,
    this.tabButtonIconSize,
    this.tabButtonTextStyle,
  });

  // coverage:ignore-start
  factory MyoroTabViewStyle.fake() {
    return MyoroTabViewStyle(
      tabButtonBorderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      tabButtonIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      tabButtonHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      tabButtonTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      tabButtonIconSize: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      tabButtonTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
    );
  }
  // coverage:ignore-end

  /// [BorderRadius] of a tab traversal button.
  final BorderRadius? tabButtonBorderRadius;

  /// [MyoroTapStatusEnum.idle]'s [Color] of the tab's traversal button when the tab is selected.
  final Color? tabButtonIdleColor;

  /// [MyoroTapStatusEnum.hover]'s [Color] of the tab's traversal button when the tab is selected.
  final Color? tabButtonHoverColor;

  /// [MyoroTapStatusEnum.tap]'s [Color] of the tab's traversal button when the tab is selected.
  final Color? tabButtonTapColor;

  /// Icon size of a tab traversal button.
  final double? tabButtonIconSize;

  /// [TextStyle] of a tab traversal button.
  final TextStyle? tabButtonTextStyle;

  /// Copy with.
  MyoroTabViewStyle copyWith({
    BorderRadius? tabButtonBorderRadius,
    bool tabButtonBorderRadiusProvided = true,
    Color? tabButtonIdleColor,
    bool tabButtonIdleColorProvided = true,
    Color? tabButtonHoverColor,
    bool tabButtonHoverColorProvided = true,
    Color? tabButtonTapColor,
    bool tabButtonTapColorProvided = true,
    double? tabButtonIconSize,
    bool tabButtonIconSizeProvided = true,
    TextStyle? tabButtonTextStyle,
    bool tabButtonTextStyleProvided = true,
  }) {
    return MyoroTabViewStyle(
      tabButtonBorderRadius: tabButtonBorderRadiusProvided
          ? (tabButtonBorderRadius ?? this.tabButtonBorderRadius)
          : null,
      tabButtonIdleColor: tabButtonIdleColorProvided ? (tabButtonIdleColor ?? this.tabButtonIdleColor) : null,
      tabButtonHoverColor: tabButtonHoverColorProvided ? (tabButtonHoverColor ?? this.tabButtonHoverColor) : null,
      tabButtonTapColor: tabButtonTapColorProvided ? (tabButtonTapColor ?? this.tabButtonTapColor) : null,
      tabButtonIconSize: tabButtonIconSizeProvided ? (tabButtonIconSize ?? this.tabButtonIconSize) : null,
      tabButtonTextStyle: tabButtonTextStyleProvided ? (tabButtonTextStyle ?? this.tabButtonTextStyle) : null,
    );
  }
}
