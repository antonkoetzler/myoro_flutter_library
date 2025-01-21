import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroTableWidgetShowcaseThemeExtension].
void main() {
  test('MyoroTableWidgetShowcaseThemeExtension.copyWith', () {
    const MyoroTableWidgetShowcaseThemeExtension().copyWith();
  });

  test('MyoroTableWidgetShowcaseThemeExtension.lerp', () {
    const MyoroTableWidgetShowcaseThemeExtension().lerp(
      const MyoroTableWidgetShowcaseThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
