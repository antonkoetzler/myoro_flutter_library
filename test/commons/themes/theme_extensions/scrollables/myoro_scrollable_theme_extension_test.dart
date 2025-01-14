import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroScrollableThemeExtension].
void main() {
  final themeExtension1 = MyoroScrollableThemeExtension.fake();
  final themeExtension2 = MyoroScrollableThemeExtension.fake();

  test('MyoroScrollableThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(padding: themeExtension2.padding);
    expect(copiedThemeExtension.padding, themeExtension2.padding);
  });

  test('MyoroScrollableThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(lerpedThemeExtension.padding, EdgeInsets.lerp(themeExtension1.padding, themeExtension2.padding, i));
    }
  });
}
