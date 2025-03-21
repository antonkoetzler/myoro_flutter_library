import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroSearchInputThemeExtension].
void main() {
  final themeExtension1 = MyoroSearchInputThemeExtension.fake();
  final themeExtension2 = MyoroSearchInputThemeExtension.fake();

  test('MyoroSearchInputThemeExtension.copyWith', () {
    MyoroSearchInputThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      spacing: themeExtension2.spacing,
      searchButtonIcon: themeExtension2.searchButtonIcon,
      searchButtonBordered: themeExtension2.searchButtonBordered,
      searchButtonHoverColor: themeExtension2.searchButtonHoverColor,
      searchButtonLoadingSize: themeExtension2.searchButtonLoadingSize,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroSearchInputThemeExtension.copyWith', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.searchButtonIcon,
        myoroLerp(
          themeExtension1.searchButtonIcon,
          themeExtension2.searchButtonIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.searchButtonBordered,
        myoroLerp(
          themeExtension1.searchButtonBordered,
          themeExtension2.searchButtonBordered,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.searchButtonHoverColor,
        Color.lerp(
          themeExtension1.searchButtonHoverColor,
          themeExtension2.searchButtonHoverColor,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.searchButtonLoadingSize,
        lerpDouble(
          themeExtension1.searchButtonLoadingSize,
          themeExtension2.searchButtonLoadingSize,
          i,
        ),
      );
    }
  });
}
