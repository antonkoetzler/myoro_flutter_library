import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test for [createMyoroColorScheme].
void main() {
  Brightness brightness(bool isDarkMode) =>
      isDarkMode ? Brightness.dark : Brightness.light;
  Color primary(bool isDarkMode) =>
      isDarkMode
          ? MyoroDarkModeColorTheme.primary
          : MyoroLightModeColorTheme.primary;
  Color secondary(bool isDarkMode) =>
      isDarkMode
          ? MyoroDarkModeColorTheme.secondary
          : MyoroLightModeColorTheme.secondary;

  test('createMyoroColorScheme', () {
    final darkModeColorScheme = createMyoroColorScheme(true);
    final lightModeColorScheme = createMyoroColorScheme(false);

    expect(
      darkModeColorScheme,
      ColorScheme(
        brightness: brightness(true),
        primary: primary(true),
        onPrimary: secondary(true),
        secondary: primary(true),
        onSecondary: secondary(true),
        error: MyoroColorTheme.error,
        onError: MyoroColorTheme.onError,
        surface: primary(true),
        onSurface: secondary(true),
      ),
    );

    expect(
      lightModeColorScheme,
      ColorScheme(
        brightness: brightness(false),
        primary: primary(false),
        onPrimary: secondary(false),
        secondary: primary(false),
        onSecondary: secondary(false),
        error: MyoroColorTheme.error,
        onError: MyoroColorTheme.onError,
        surface: primary(false),
        onSurface: secondary(false),
      ),
    );
  });
}
