import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroBasicDividerThemeExtension.builder', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final themeExtension = MyoroBasicDividerThemeExtension.builder(colorScheme);
    expect(themeExtension.color, colorScheme.onPrimary);
    expect(themeExtension.shortValue, kMyoroBorderLength);
    expect(themeExtension.longValue, double.infinity);
  });

  test('MyoroBasicDividerThemeExtension.lerp', () {
    final themeExtension1 = MyoroBasicDividerThemeExtension.fake();
    final themeExtension2 = MyoroBasicDividerThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.color, Color.lerp(themeExtension1.color, themeExtension2.color, i));
      expect(lerpedThemeExtension.shortValue, lerpDouble(themeExtension1.shortValue, themeExtension2.shortValue, i));
      expect(lerpedThemeExtension.longValue, lerpDouble(themeExtension1.longValue, themeExtension2.longValue, i));
    }
  });
}
