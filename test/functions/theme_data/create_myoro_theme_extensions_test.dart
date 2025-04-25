import 'package:collection/collection.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [createMyoroThemeExtensions].
void main() {
  final bool isDarkMode = faker.randomGenerator.boolean();

  setUp(() {
    MyoroTypographyDesignSystem.isDarkMode = isDarkMode;
  });

  test('createMyoroThemeExtensions', () {
    final List<ThemeExtension> themeExtensions = createMyoroThemeExtensions(
      createMyoroColorScheme(isDarkMode),
      createMyoroTextTheme(isDarkMode),
    );

    final themeExtensionTypes = [
      // App bars
      MyoroAppBarThemeExtension,

      // Cards
      MyoroCardThemeExtension,

      // Carousels
      MyoroCarouselThemeExtension,

      // Checkboxes
      MyoroCheckboxThemeExtension,
      MyoroGroupCheckboxThemeExtension,

      // Dividers
      MyoroBasicDividerThemeExtension,
      MyoroResizeDividerThemeExtension,

      // Drawers
      MyoroDrawerThemeExtension,

      // Dropdowns
      MyoroDropdownThemeExtension,

      // Forms
      MyoroFormThemeExtension,

      // Graphs
      MyoroBarGraphThemeExtension,
      MyoroPieGraphThemeExtension,

      // Inputs
      MyoroDatePickerInputThemeExtension,
      MyoroInputThemeExtension,
      MyoroSearchInputThemeExtension,

      // Layout builders
      MyoroLayoutBuilderThemeExtension,

      // Loaders
      MyoroCircularLoaderThemeExtension,

      // Material apps
      MyoroMaterialAppThemeExtension,

      // Menus
      MyoroMenuThemeExtension,

      // Modals
      MyoroModalThemeExtension,
      MyoroDialogModalThemeExtension,

      // Radios
      MyoroRadioThemeExtension,
      MyoroGroupRadioThemeExtension,

      // Resolvers
      MyoroResolverThemeExtension,

      // Screens
      MyoroScreenThemeExtension,

      // Sliders
      MyoroSliderThemeExtension,

      // Snack bars
      MyoroSnackBarContainerThemeExtension,
      MyoroSnackBarThemeExtension,

      // Tables
      MyoroTableThemeExtension,

      // Tooltips
      MyoroTooltipThemeExtension,
    ];

    expect(themeExtensions.length, themeExtensionTypes.length);
    for (final themeExtensionType in themeExtensionTypes) {
      expect(
        themeExtensions.firstWhereOrNull(
          (t) => t.runtimeType.toString() == themeExtensionType.toString(),
        ),
        isNotNull,
      );
    }
  });
}
