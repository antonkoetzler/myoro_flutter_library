import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroBarGraphWidgetShowcaseThemeExtension].
void main() {
  test('MyoroBarGraphWidgetShowcaseThemeExtension.copyWith', () {
    const MyoroBarGraphWidgetShowcaseThemeExtension().copyWith();
  });

  test('MyoroBarGraphWidgetShowcaseThemeExtension.lerp', () {
    const MyoroBarGraphWidgetShowcaseThemeExtension().lerp(
      const MyoroBarGraphWidgetShowcaseThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
