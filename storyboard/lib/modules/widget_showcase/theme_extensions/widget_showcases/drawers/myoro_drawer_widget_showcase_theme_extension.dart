import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroDrawerWidgetShowcase].
///
/// TODO: Test needs to be rewritten.
@immutable
final class MyoroDrawerWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension> {
  /// [MyoroInput.configuration.inputStyle] of [_TitleOption].
  final MyoroInputStyleEnum inputStyle;

  const MyoroDrawerWidgetShowcaseThemeExtension({required this.inputStyle});

  MyoroDrawerWidgetShowcaseThemeExtension.fake() : inputStyle = MyoroInputStyleEnum.fake();

  const MyoroDrawerWidgetShowcaseThemeExtension.builder()
    : inputStyle = MyoroInputStyleEnum.outlined;

  @override
  MyoroDrawerWidgetShowcaseThemeExtension copyWith({MyoroInputStyleEnum? inputStyle}) {
    return MyoroDrawerWidgetShowcaseThemeExtension(inputStyle: inputStyle ?? this.inputStyle);
  }

  @override
  MyoroDrawerWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDrawerWidgetShowcaseThemeExtension) return this;
    return copyWith(inputStyle: myoroLerp(inputStyle, other.inputStyle, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDrawerWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.inputStyle == inputStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([inputStyle]);
  }

  @override
  String toString() =>
      'MyoroDrawerWidgetShowcaseThemeExtension(\n'
      '  inputStyle: $inputStyle,\n'
      ');';
}
