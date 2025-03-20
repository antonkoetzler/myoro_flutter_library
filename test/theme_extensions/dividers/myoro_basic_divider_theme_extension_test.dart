import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroBasicDividerThemeExtension].
void main() {
  final themeExtension1 = MyoroBasicDividerThemeExtension.fake();
  final themeExtension2 = MyoroBasicDividerThemeExtension.fake();

  test('MyoroBasicDividerThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      color: themeExtension2.color,
      shortValue: themeExtension2.shortValue,
      longValue: themeExtension2.longValue,
    );
    expect(copiedThemeExtension.color, themeExtension2.color);
    expect(copiedThemeExtension.shortValue, themeExtension2.shortValue);
    expect(copiedThemeExtension.longValue, themeExtension2.longValue);
  });

  test('MyoroBasicDividerThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.color,
        Color.lerp(themeExtension1.color, themeExtension2.color, i),
      );
      expect(
        lerpedThemeExtension.shortValue,
        lerpDouble(themeExtension1.shortValue, themeExtension2.shortValue, i),
      );
      expect(
        lerpedThemeExtension.longValue,
        lerpDouble(themeExtension1.longValue, themeExtension2.longValue, i),
      );
    }
  });
}
