import 'package:collection/collection.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final bool isDarkMode = faker.randomGenerator.boolean();
  late final List<ThemeExtension> themeExtensions;

  setUp(() {
    MyoroTypographyDesignSystem.isDarkMode = isDarkMode;
    themeExtensions = const WidgetShowcaseModule().themeExtensionsBuilder(
      createMyoroColorScheme(isDarkMode),
      createMyoroTextTheme(isDarkMode),
    );
  });

  bool themeExtensionExists(Type type) {
    final ThemeExtension? themeExtension = themeExtensions.firstWhereOrNull(
      (ThemeExtension themeExtension) => themeExtension.runtimeType == type,
    );
    return themeExtension != null;
  }

  test('WidgetShowcaseModule.themeExtensionsBuilder', () {
    // [WidgetShowcase]
    expect(themeExtensionExists(WidgetShowcaseThemeExtension), isTrue);

    // [WidgetShowcase] options
    expect(themeExtensionExists(ColorWidgetShowcaseOptionThemeExtension), isTrue);
    expect(themeExtensionExists(IconWidgetShowcaseOptionThemeExtension), isTrue);
    expect(themeExtensionExists(MouseCursorWidgetShowcaseOptionThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension), isTrue);
    expect(themeExtensionExists(PaddingWidgetShowcaseOptionThemeExtension), isTrue);
    expect(themeExtensionExists(TextAlignWidgetShowcaseOptionThemeExtension), isTrue);
    expect(themeExtensionExists(TextOverflowWidgetShowcaseOptionThemeExtension), isTrue);
    expect(themeExtensionExists(TextStyleWidgetShowcaseOptionThemeExtension), isTrue);
    expect(themeExtensionExists(WidgetShowcaseOptionThemeExtension), isTrue);

    // Accordions
    expect(themeExtensionExists(MyoroAccordionWidgetShowcaseThemeExtension), isTrue);

    // App bars
    expect(themeExtensionExists(MyoroAppBarWidgetShowcaseThemeExtension), isTrue);

    // Buttons
    expect(themeExtensionExists(MyoroButtonWidgetShowcaseThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroIconTextButtonWidgetShowcaseThemeExtension), isTrue);

    // Cards
    expect(themeExtensionExists(MyoroCardWidgetShowcaseThemeExtension), isTrue);

    // Carousels
    expect(themeExtensionExists(MyoroCarouselWidgetShowcaseThemeExtension), isTrue);

    // Checkboxes
    expect(themeExtensionExists(MyoroCheckboxWidgetShowcaseThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroGroupCheckboxWidgetShowcaseThemeExtension), isTrue);

    // Dividers
    expect(themeExtensionExists(MyoroBasicDividerWidgetShowcaseThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroResizeDividerWidgetShowcaseThemeExtension), isTrue);

    // Drawers
    expect(themeExtensionExists(MyoroDrawerWidgetShowcaseThemeExtension), isTrue);

    // Dropdowns
    expect(themeExtensionExists(MyoroMultiDropdownWidgetShowcaseThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroSingularDropdownWidgetShowcaseThemeExtension), isTrue);

    // Forms
    expect(themeExtensionExists(MyoroFormWidgetShowcaseThemeExtension), isTrue);

    // Graphs
    expect(themeExtensionExists(MyoroBarGraphWidgetShowcaseThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroPieGraphWidgetShowcaseThemeExtension), isTrue);

    // Inputs
    expect(themeExtensionExists(MyoroDatePickerInputWidgetShowcaseThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroInputWidgetShowcaseThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroSearchInputWidgetShowcaseThemeExtension), isTrue);

    // Layout builders
    expect(themeExtensionExists(MyoroLayoutBuilderWidgetShowcaseThemeExtension), isTrue);

    // Loaders
    expect(themeExtensionExists(MyoroCircularLoaderWidgetShowcaseThemeExtension), isTrue);

    // Material apps
    expect(themeExtensionExists(MyoroMaterialAppWidgetShowcaseThemeExtension), isTrue);

    // Menus
    expect(themeExtensionExists(MyoroMenuWidgetShowcaseThemeExtension), isTrue);

    // Modals
    expect(themeExtensionExists(MyoroModalWidgetShowcaseThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroDialogModalWidgetShowcaseThemeExtension), isTrue);

    // Radios
    expect(themeExtensionExists(MyoroGroupRadioWidgetShowcaseThemeExtension), isTrue);
    expect(themeExtensionExists(MyoroRadioWidgetShowcaseThemeExtension), isTrue);

    // Resolvers
    expect(themeExtensionExists(MyoroResolverWidgetShowcaseThemeExtension), isTrue);

    // Screens
    expect(themeExtensionExists(MyoroScreenWidgetShowcaseThemeExtension), isTrue);

    // Sliders
    expect(themeExtensionExists(MyoroSliderWidgetShowcaseThemeExtension), isTrue);

    // Snack bars
    expect(themeExtensionExists(MyoroSnackBarWidgetShowcaseThemeExtension), isTrue);

    // Tooltips
    expect(themeExtensionExists(MyoroTooltipWidgetShowcaseThemeExtension), isTrue);
  });
}
