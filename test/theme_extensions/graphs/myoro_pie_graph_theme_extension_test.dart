import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroPieGraphThemeExtension].
void main() {
  final themeExtension1 = MyoroPieGraphThemeExtension.fake();
  final themeExtension2 = MyoroPieGraphThemeExtension.fake();

  test('MyoroPieGraphThemeExtension.copyWith', () {
    MyoroPieGraphThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      itemColor: themeExtension2.itemColor,
      itemRadius: themeExtension2.itemRadius,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroPieGraphThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.itemColor,
        Color.lerp(themeExtension1.itemColor, themeExtension2.itemColor, i),
      );
      expect(
        lerpedThemeExtension.itemRadius,
        lerpDouble(themeExtension1.itemRadius, themeExtension2.itemRadius, i),
      );
    }
  });
}
