import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroBasicDividerWidgetShowcase].
final class MyoroBasicDividerWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension> {
  /// [MyoroIconTextHoverButton.configuration.buttonBordered] of [_Button].
  final bool buttonBordered;

  const MyoroBasicDividerWidgetShowcaseThemeExtension({
    required this.buttonBordered,
  });

  const MyoroBasicDividerWidgetShowcaseThemeExtension.builder()
    : buttonBordered = true;

  MyoroBasicDividerWidgetShowcaseThemeExtension.fake()
    : buttonBordered = faker.randomGenerator.boolean();

  @override
  MyoroBasicDividerWidgetShowcaseThemeExtension copyWith({
    bool? buttonBordered,
  }) {
    return MyoroBasicDividerWidgetShowcaseThemeExtension(
      buttonBordered: buttonBordered ?? this.buttonBordered,
    );
  }

  @override
  MyoroBasicDividerWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    if (other is! MyoroBasicDividerWidgetShowcaseThemeExtension) return this;
    return copyWith(
      buttonBordered: myoroLerp(buttonBordered, other.buttonBordered, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroBasicDividerWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.buttonBordered == buttonBordered;
  }

  @override
  int get hashCode {
    return Object.hashAll([buttonBordered]);
  }
}
