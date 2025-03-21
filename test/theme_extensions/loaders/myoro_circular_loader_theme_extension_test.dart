import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroCircularLoaderThemeExtension].
void main() {
  final themeExtension1 = MyoroCircularLoaderThemeExtension.fake();
  final themeExtension2 = MyoroCircularLoaderThemeExtension.fake();

  test('MyoroCircularLoaderThemeExtension.copyWith', () {
    MyoroCircularLoaderThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      color: themeExtension2.color,
      size: themeExtension2.size,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroCircularLoaderThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.color,
        Color.lerp(themeExtension1.color, themeExtension2.color, i),
      );
      expect(
        lerpedThemeExtension.size,
        lerpDouble(themeExtension1.size, themeExtension2.size, i),
      );
    }
  });
}
