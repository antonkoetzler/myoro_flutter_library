import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroSearchInputWidgetShowcaseThemeExtension].
void main() {
  test('MyoroSearchInputWidgetShowcaseThemeExtension.copyWith', () {
    const MyoroSearchInputWidgetShowcaseThemeExtension().copyWith();
  });

  test('MyoroSearchInputWidgetShowcaseThemeExtension.lerp', () {
    const MyoroSearchInputWidgetShowcaseThemeExtension().lerp(
      const MyoroSearchInputWidgetShowcaseThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
