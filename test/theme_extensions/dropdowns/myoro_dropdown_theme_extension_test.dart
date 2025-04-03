import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final themeExtension1 = MyoroDropdownThemeExtension.fake();
  final themeExtension2 = MyoroDropdownThemeExtension.fake();

  test('MyoroDropdownThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(spacing: themeExtension2.spacing),
      themeExtension2,
    );
  });

  test('MyoroDropdownThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
    }
  });
}
