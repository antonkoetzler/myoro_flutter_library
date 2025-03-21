import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroDropdownThemeExtension].
void main() {
  final themeExtension1 = MyoroDropdownThemeExtension.fake();
  final themeExtension2 = MyoroDropdownThemeExtension.fake();

  test('MyoroDropdownThemeExtension.copyWith', () {
    MyoroDropdownThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      inputStyle: themeExtension2.inputStyle,
      inputDropdownSpacing: themeExtension2.inputDropdownSpacing,
      menuMaxHeight: themeExtension2.menuMaxHeight,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroDropdownThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
      expect(
        lerpedThemeExtension.inputDropdownSpacing,
        lerpDouble(
          themeExtension1.inputDropdownSpacing,
          themeExtension2.inputDropdownSpacing,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.menuMaxHeight,
        lerpDouble(
          themeExtension1.menuMaxHeight,
          themeExtension2.menuMaxHeight,
          i,
        ),
      );
    }
  });
}
