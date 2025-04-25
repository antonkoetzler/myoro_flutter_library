import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroSnackBarWidgetShowcase].
final class MyoroSnackBarWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] for inputs.
  final MyoroInputStyleEnum inputStyle;

  /// [IconData] of [_Child].
  final IconData childIcon;

  const MyoroSnackBarWidgetShowcaseThemeExtension({
    required this.inputStyle,
    required this.childIcon,
  });

  MyoroSnackBarWidgetShowcaseThemeExtension.fake()
    : inputStyle = MyoroInputStyleEnum.fake(),
      childIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )];

  MyoroSnackBarWidgetShowcaseThemeExtension.builder(ColorScheme colorScheme)
    : inputStyle = MyoroInputStyleEnum.outlined,
      childIcon = Icons.flood;

  @override
  MyoroSnackBarWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    IconData? childIcon,
  }) {
    return MyoroSnackBarWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      childIcon: childIcon ?? this.childIcon,
    );
  }

  @override
  MyoroSnackBarWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSnackBarWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
      childIcon: myoroLerp(childIcon, other.childIcon, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSnackBarWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.inputStyle == inputStyle &&
        other.childIcon == childIcon;
  }

  @override
  int get hashCode {
    return Object.hash(inputStyle, childIcon);
  }

  @override
  String toString() =>
      'MyoroSnackBarWidgetShowcaseThemeExtension(\n'
      '  inputStyle: $inputStyle,\n'
      '  childIcon: $childIcon,\n'
      ');';
}
