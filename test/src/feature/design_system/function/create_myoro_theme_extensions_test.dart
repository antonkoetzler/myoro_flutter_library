import 'package:collection/collection.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('createMyoroThemeExtensions', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final extensions = createMyoroThemeExtensions(isDarkMode, colorScheme, textTheme);

    expect(extensions.length, 37);

    void expectThemeExtensionExists(Type type) {
      final exists = extensions.firstWhereOrNull((themeExtension) => themeExtension.runtimeType == type) != null;
      expect(exists, isTrue);
    }

    // Accordions
    expectThemeExtensionExists(MyoroAccordionThemeExtension);

    // Apps
    expectThemeExtensionExists(MyoroAppThemeExtension);

    // App bars
    expectThemeExtensionExists(MyoroAppBarThemeExtension);

    // Buttons
    expectThemeExtensionExists(MyoroButtonThemeExtension);
    expectThemeExtensionExists(MyoroIconTextButtonThemeExtension);

    // Cards
    expectThemeExtensionExists(MyoroCardThemeExtension);

    // Carousels
    expectThemeExtensionExists(MyoroCarouselThemeExtension);

    // Checkboxes
    expectThemeExtensionExists(MyoroCheckboxThemeExtension);
    expectThemeExtensionExists(MyoroGroupCheckboxThemeExtension);

    // Dividers
    expectThemeExtensionExists(MyoroBasicDividerThemeExtension);
    expectThemeExtensionExists(MyoroResizeDividerThemeExtension);

    // Drawers
    expectThemeExtensionExists(MyoroDrawerThemeExtension);

    // Dropdowns
    expectThemeExtensionExists(MyoroDropdownsThemeExtension);

    // Feedbacks
    expectThemeExtensionExists(MyoroFeedbackThemeExtension);

    // Forms
    expectThemeExtensionExists(MyoroFormThemeExtension);

    // Graphs
    expectThemeExtensionExists(MyoroBarGraphThemeExtension);
    expectThemeExtensionExists(MyoroPieGraphThemeExtension);

    // Inputs
    expectThemeExtensionExists(MyoroDatePickerInputThemeExtension);
    expectThemeExtensionExists(MyoroInputThemeExtension);
    expectThemeExtensionExists(MyoroSearchInputThemeExtension);
    expectThemeExtensionExists(MyoroTimePickerInputThemeExtension);

    // Layout buildes
    expectThemeExtensionExists(MyoroLayoutBuilderThemeExtension);

    // Loaders
    expectThemeExtensionExists(MyoroCircularLoaderThemeExtension);

    // Menus
    expectThemeExtensionExists(MyoroMenuThemeExtension);

    // Modals
    expectThemeExtensionExists(MyoroModalThemeExtension);
    expectThemeExtensionExists(MyoroDialogModalThemeExtension);

    // Pickers
    expectThemeExtensionExists(MyoroFilePickerThemeExtension);
    expectThemeExtensionExists(MyoroImagePickerThemeExtension);

    // Radios
    expectThemeExtensionExists(MyoroRadioThemeExtension);
    expectThemeExtensionExists(MyoroGroupRadioThemeExtension);

    // Screens
    expectThemeExtensionExists(MyoroScreenThemeExtension);

    // Sliders
    expectThemeExtensionExists(MyoroSlidersThemeExtension);

    // Snack bars
    expectThemeExtensionExists(MyoroSnackBarContainerThemeExtension);
    expectThemeExtensionExists(MyoroSnackBarThemeExtension);

    // Tab views
    expectThemeExtensionExists(MyoroTabViewThemeExtension);

    // Tables
    expectThemeExtensionExists(MyoroTableThemeExtension);

    // Tooltips
    expectThemeExtensionExists(MyoroTooltipThemeExtension);
  });
}
