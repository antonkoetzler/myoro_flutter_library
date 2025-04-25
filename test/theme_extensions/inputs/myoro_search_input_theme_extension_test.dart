import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final themeExtension1 = MyoroSearchInputThemeExtension.fake();
  final themeExtension2 = MyoroSearchInputThemeExtension.fake();

  test('MyoroSearchInputThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        spacing: themeExtension2.spacing,
        searchButtonIcon: themeExtension2.searchButtonIcon,
        searchButtonLoadingSize: themeExtension2.searchButtonLoadingSize,
      ),
      themeExtension2,
    );
  });

  test('MyoroSearchInputThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.spacing,
        lerpDouble(themeExtension1.spacing, themeExtension2.spacing, i),
      );
      expect(
        lerpedThemeExtension.searchButtonIcon,
        myoroLerp(themeExtension1.searchButtonIcon, themeExtension2.searchButtonIcon, i),
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

  test('MyoroSearchInputThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroSearchInputThemeExtension(\n'
      '  spacing: ${themeExtension1.spacing},\n'
      '  searchButtonIcon: ${themeExtension1.searchButtonIcon},\n'
      '  searchButtonLoadingSize: ${themeExtension1.searchButtonLoadingSize},\n'
      ');',
    );
  });
}
