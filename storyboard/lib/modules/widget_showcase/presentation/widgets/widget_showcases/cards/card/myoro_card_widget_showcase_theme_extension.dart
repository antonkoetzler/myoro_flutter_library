import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroCardWidgetShowcase].
final class MyoroCardWidgetShowcaseThemeExtension extends ThemeExtension<MyoroCardWidgetShowcaseThemeExtension> {
  /// [TextStyle] of the text within the [MyoroCard].
  final TextStyle textStyle;

  const MyoroCardWidgetShowcaseThemeExtension({required this.textStyle});

  MyoroCardWidgetShowcaseThemeExtension.fake() : textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroCardWidgetShowcaseThemeExtension.builder(TextTheme textTheme) : textStyle = textTheme.displayLarge!;

  @override
  MyoroCardWidgetShowcaseThemeExtension copyWith({TextStyle? textStyle}) {
    return MyoroCardWidgetShowcaseThemeExtension(textStyle: textStyle ?? this.textStyle);
  }

  @override
  MyoroCardWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroCardWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCardWidgetShowcaseThemeExtension) return this;
    return copyWith(textStyle: TextStyle.lerp(textStyle, other.textStyle, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCardWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.textStyle == textStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([textStyle]);
  }

  @override
  String toString() =>
      'MyoroCardWidgetShowcaseThemeExtension(\n'
      '  textStyle: $textStyle,\n'
      ');';
}
