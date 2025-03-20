import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroHoverButtonWidgetShowcase].
final class MyoroHoverButtonWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroHoverButtonWidgetShowcaseThemeExtension> {
  /// Padding of the [MyoroHoverButton]'s contents.
  final EdgeInsets widgetContentPadding;

  /// Text style of the [MyoroHoverButton]'s contents.
  final TextStyle widgetContentTextStyle;

  /// Color of of the [MyoroHoverButton]'s contents.
  final Color colorDropdownitemPrimaryColor;

  /// Padding of [_ColorDropdownItem].
  final EdgeInsets colorDropdownItemPadding;

  /// Size of the first item of [_ColorDropdownItem].
  final Size colorDropdownItemColorSize;

  /// Text style of the second item of [_ColorDropdownItem].
  final TextStyle colorDropdownItemColorTextStyle;

  /// Spacing between the items in [_ColorDropdownItem].
  final double colorDropdownItemSpacing;

  /// [_BorderRadiusSlider] [MyoroSlider.maxValue].
  final double borderRadiusSliderMaxValue;

  /// [_BorderRadiusSliDer] [MyoroIconTextHoverButton.configuration.bordered].
  final bool borderRadiusSliderMaxValueBordered;

  const MyoroHoverButtonWidgetShowcaseThemeExtension({
    required this.widgetContentPadding,
    required this.widgetContentTextStyle,
    required this.colorDropdownitemPrimaryColor,
    required this.colorDropdownItemPadding,
    required this.colorDropdownItemColorSize,
    required this.colorDropdownItemColorTextStyle,
    required this.colorDropdownItemSpacing,
    required this.borderRadiusSliderMaxValue,
    required this.borderRadiusSliderMaxValueBordered,
  });

  MyoroHoverButtonWidgetShowcaseThemeExtension.fake()
    : widgetContentPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      widgetContentTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
      colorDropdownitemPrimaryColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      colorDropdownItemPadding = EdgeInsets.all(
        faker.randomGenerator.decimal(),
      ),
      colorDropdownItemColorSize = Size(
        faker.randomGenerator.decimal(),
        faker.randomGenerator.decimal(),
      ),
      colorDropdownItemColorTextStyle =
          MyoroTypographyTheme.instance.randomTextStyle,
      colorDropdownItemSpacing = faker.randomGenerator.decimal(),
      borderRadiusSliderMaxValue = faker.randomGenerator.decimal(),
      borderRadiusSliderMaxValueBordered = faker.randomGenerator.boolean();

  @override
  MyoroHoverButtonWidgetShowcaseThemeExtension copyWith({
    EdgeInsets? widgetContentPadding,
    TextStyle? widgetContentTextStyle,
    Color? colorDropdownitemPrimaryColor,
    EdgeInsets? colorDropdownItemPadding,
    Size? colorDropdownItemColorSize,
    TextStyle? colorDropdownItemColorTextStyle,
    double? colorDropdownItemSpacing,
    double? borderRadiusSliderMaxValue,
    bool? borderRadiusSliderMaxValueBordered,
  }) {
    return MyoroHoverButtonWidgetShowcaseThemeExtension(
      widgetContentPadding: widgetContentPadding ?? this.widgetContentPadding,
      widgetContentTextStyle:
          widgetContentTextStyle ?? this.widgetContentTextStyle,
      colorDropdownitemPrimaryColor:
          colorDropdownitemPrimaryColor ?? this.colorDropdownitemPrimaryColor,
      colorDropdownItemPadding:
          colorDropdownItemPadding ?? this.colorDropdownItemPadding,
      colorDropdownItemColorSize:
          colorDropdownItemColorSize ?? this.colorDropdownItemColorSize,
      colorDropdownItemColorTextStyle:
          colorDropdownItemColorTextStyle ??
          this.colorDropdownItemColorTextStyle,
      colorDropdownItemSpacing:
          colorDropdownItemSpacing ?? this.colorDropdownItemSpacing,
      borderRadiusSliderMaxValue:
          borderRadiusSliderMaxValue ?? this.borderRadiusSliderMaxValue,
      borderRadiusSliderMaxValueBordered:
          borderRadiusSliderMaxValueBordered ??
          this.borderRadiusSliderMaxValueBordered,
    );
  }

  @override
  MyoroHoverButtonWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroHoverButtonWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    if (other is! MyoroHoverButtonWidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetContentPadding: EdgeInsets.lerp(
        widgetContentPadding,
        other.widgetContentPadding,
        t,
      ),
      widgetContentTextStyle: TextStyle.lerp(
        widgetContentTextStyle,
        other.widgetContentTextStyle,
        t,
      ),
      colorDropdownitemPrimaryColor: Color.lerp(
        colorDropdownitemPrimaryColor,
        other.colorDropdownitemPrimaryColor,
        t,
      ),
      colorDropdownItemPadding: EdgeInsets.lerp(
        colorDropdownItemPadding,
        other.colorDropdownItemPadding,
        t,
      ),
      colorDropdownItemColorSize: Size.lerp(
        colorDropdownItemColorSize,
        other.colorDropdownItemColorSize,
        t,
      ),
      colorDropdownItemColorTextStyle: TextStyle.lerp(
        colorDropdownItemColorTextStyle,
        other.colorDropdownItemColorTextStyle,
        t,
      ),
      colorDropdownItemSpacing: lerpDouble(
        colorDropdownItemSpacing,
        other.colorDropdownItemSpacing,
        t,
      ),
      borderRadiusSliderMaxValue: lerpDouble(
        borderRadiusSliderMaxValue,
        other.borderRadiusSliderMaxValue,
        t,
      ),
      borderRadiusSliderMaxValueBordered: myoroLerp(
        borderRadiusSliderMaxValueBordered,
        other.borderRadiusSliderMaxValueBordered,
        t,
      ),
    );
  }
}
