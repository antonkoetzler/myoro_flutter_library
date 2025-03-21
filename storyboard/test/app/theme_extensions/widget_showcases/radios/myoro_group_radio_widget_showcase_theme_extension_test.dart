import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroGroupRadioWidgetShowcaseThemeExtension].
void main() {
  test('MyoroGroupRadioWidgetShowcaseThemeExtension.copyWith', () {
    const MyoroGroupRadioWidgetShowcaseThemeExtension().copyWith();
  });

  test('MyoroGroupRadioWidgetShowcaseThemeExtension.lerp', () {
    const MyoroGroupRadioWidgetShowcaseThemeExtension().lerp(
      const MyoroGroupRadioWidgetShowcaseThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
