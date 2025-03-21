import 'package:collection/collection.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Sanity test of [createThemeExtensions].
void main() {
  test('createThemeExtensions', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final themeExtensions = createThemeExtensions(
      createMyoroColorScheme(isDarkMode),
      createMyoroTextTheme(isDarkMode),
    );
    final themeExtensionTypes = [
      // Base UI
      StoryboardAppBarThemeExtension,
      StoryboardBodyThemeExtension,

      // ########## Widget showcases ##########
      // The generic [WidgetShowcase] variable.
      WidgetShowcaseThemeExtension,

      // App bars
      MyoroAppBarWidgetShowcaseThemeExtension,

      // Buttons
      MyoroHoverButtonWidgetShowcaseThemeExtension,

      // Cards
      MyoroCardWidgetShowcaseThemeExtension,

      // Carousels
      MyoroCarouselWidgetShowcaseThemeExtension,

      // Checkboxes
      MyoroCheckboxWidgetShowcaseThemeExtension,

      // Dividers
      MyoroBasicDividerWidgetShowcaseThemeExtension,
      MyoroResizeDividerWidgetShowcaseThemeExtension,

      // Drawers
      MyoroDrawerWidgetShowcaseThemeExtension,

      // Dropdowns
      MyoroSingularDropdownWidgetShowcaseThemeExtension,
      MyoroMultiDropdownWidgetShowcaseThemeExtension,

      // Forms
      MyoroFormWidgetShowcaseThemeExtension,

      // Graphs
      MyoroBarGraphWidgetShowcaseThemeExtension,
      MyoroPieGraphWidgetShowcaseThemeExtension,

      // Inputs
      MyoroDatePickerInputWidgetShowcaseThemeExtension,
      MyoroInputWidgetShowcaseThemeExtension,
      MyoroSearchInputWidgetShowcaseThemeExtension,

      // Layout builders
      MyoroLayoutBuilderWidgetShowcaseThemeExtension,

      // Loaders
      MyoroCircularLoaderWidgetShowcaseThemeExtension,

      // Material apps
      MyoroMaterialAppWidgetShowcaseThemeExtension,

      // Menus
      MyoroMenuWidgetShowcaseThemeExtension,

      // Modal
      MyoroModalWidgetShowcaseThemeExtension,
      MyoroDialogModalWidgetShowcaseThemeExtension,

      // Radios
      MyoroGroupRadioWidgetShowcaseThemeExtension,
      MyoroRadioWidgetShowcaseThemeExtension,

      // Resolvers
      MyoroResolverWidgetShowcaseThemeExtension,

      // Screens
      MyoroScreenWidgetShowcaseThemeExtension,

      // Sliders
      MyoroSliderWidgetShowcaseThemeExtension,

      // Snack bars
      MyoroSnackBarWidgetShowcaseThemeExtension,

      // Tables
      MyoroTableWidgetShowcaseThemeExtension,

      // Tooltips
      MyoroTooltipWidgetShowcaseThemeExtension,
      // ######################################
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
