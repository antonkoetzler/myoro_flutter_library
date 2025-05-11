import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  test('StoryboardWidgetListingEnum value members', () {
    // App bars
    expect(StoryboardWidgetListingEnum.appBars.categoryName, 'App bars');
    expect(StoryboardWidgetListingEnum.appBars.widgetNames, ['MyoroAppBar']);

    // Buttons
    expect(StoryboardWidgetListingEnum.buttons.categoryName, 'Buttons');
    expect(StoryboardWidgetListingEnum.buttons.widgetNames, ['MyoroButton', 'MyoroIconTextButton']);

    // Cards
    expect(StoryboardWidgetListingEnum.cards.categoryName, 'Cards');
    expect(StoryboardWidgetListingEnum.cards.widgetNames, ['MyoroCard']);

    // Carousels
    expect(StoryboardWidgetListingEnum.carousels.categoryName, 'Carousels');
    expect(StoryboardWidgetListingEnum.carousels.widgetNames, ['MyoroCarousel']);

    // Checkboxes
    expect(StoryboardWidgetListingEnum.checkboxes.categoryName, 'Checkboxes');
    expect(StoryboardWidgetListingEnum.checkboxes.widgetNames, [
      'MyoroCheckbox',
      'MyoroGroupCheckbox',
    ]);

    // Dividers
    expect(StoryboardWidgetListingEnum.dividers.categoryName, 'Dividers');
    expect(StoryboardWidgetListingEnum.dividers.widgetNames, [
      'MyoroBasicDivider',
      'MyoroResizeDivider',
    ]);

    // Drawers
    expect(StoryboardWidgetListingEnum.drawers.categoryName, 'Drawers');
    expect(StoryboardWidgetListingEnum.drawers.widgetNames, ['MyoroDrawer']);

    // Dropdowns
    expect(StoryboardWidgetListingEnum.dropdowns.categoryName, 'Dropdowns');
    expect(StoryboardWidgetListingEnum.dropdowns.widgetNames, [
      'MyoroSingularDropdown',
      'MyoroMultiDropdown',
    ]);

    // Forms
    expect(StoryboardWidgetListingEnum.forms.categoryName, 'Forms');
    expect(StoryboardWidgetListingEnum.forms.widgetNames, ['MyoroForm']);

    // Graphs
    expect(StoryboardWidgetListingEnum.graphs.categoryName, 'Graphs');
    expect(StoryboardWidgetListingEnum.graphs.widgetNames, ['MyoroBarGraph', 'MyoroPieGraph']);

    // Inputs
    expect(StoryboardWidgetListingEnum.inputs.categoryName, 'Inputs');
    expect(StoryboardWidgetListingEnum.inputs.widgetNames, [
      'MyoroDatePickerInput',
      'MyoroInput',
      'MyoroSearchInput',
    ]);

    // Layout builders
    expect(StoryboardWidgetListingEnum.layoutBuilders.categoryName, 'Layout builders');
    expect(StoryboardWidgetListingEnum.layoutBuilders.widgetNames, ['MyoroLayoutBuilder']);

    // Loaders
    expect(StoryboardWidgetListingEnum.loaders.categoryName, 'Loaders');
    expect(StoryboardWidgetListingEnum.loaders.widgetNames, ['MyoroCircularLoader']);

    // Apps
    expect(StoryboardWidgetListingEnum.apps.categoryName, 'Apps');
    expect(StoryboardWidgetListingEnum.apps.widgetNames, ['MyoroApp']);

    // Menus
    expect(StoryboardWidgetListingEnum.menus.categoryName, 'Menus');
    expect(StoryboardWidgetListingEnum.menus.widgetNames, ['MyoroMenu']);

    // Modals
    expect(StoryboardWidgetListingEnum.modals.categoryName, 'Modals');
    expect(StoryboardWidgetListingEnum.modals.widgetNames, ['MyoroModal', 'MyoroDialogModal']);

    // Radios
    expect(StoryboardWidgetListingEnum.radios.categoryName, 'Radios');
    expect(StoryboardWidgetListingEnum.radios.widgetNames, ['MyoroRadio', 'MyoroGroupRadio']);

    // Resolvers
    expect(StoryboardWidgetListingEnum.resolvers.categoryName, 'Resolvers');
    expect(StoryboardWidgetListingEnum.resolvers.widgetNames, ['MyoroResolver']);

    // Screens
    expect(StoryboardWidgetListingEnum.screens.categoryName, 'Screens');
    expect(StoryboardWidgetListingEnum.screens.widgetNames, ['MyoroScreen']);

    // Sliders
    expect(StoryboardWidgetListingEnum.sliders.categoryName, 'Sliders');
    expect(StoryboardWidgetListingEnum.sliders.widgetNames, ['MyoroSlider']);

    // Snack bars
    expect(StoryboardWidgetListingEnum.snackBars.categoryName, 'Snack bars');
    expect(StoryboardWidgetListingEnum.snackBars.widgetNames, ['MyoroSnackBar']);

    // Tooltips
    expect(StoryboardWidgetListingEnum.tooltips.categoryName, 'Tooltips');
    expect(StoryboardWidgetListingEnum.tooltips.widgetNames, ['MyoroTooltip']);
  });

  test('StoryboardWidgetListingEnum.getWidgetShowcase', () {
    // App bars
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroAppBarTitle),
      isA<MyoroAppBarWidgetShowcase>(),
    );

    // Cards
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroCardTitle),
      isA<MyoroCardWidgetShowcase>(),
    );

    // Carousels
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroCarouselTitle),
      isA<MyoroCarouselWidgetShowcase>(),
    );

    // Checkboes
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroCheckboxTitle),
      isA<MyoroCheckboxWidgetShowcase>(),
    );
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(
        StoryboardWidgetListingEnum.myoroGroupCheckboxTitle,
      ),
      isA<MyoroGroupCheckboxWidgetShowcase>(),
    );

    // Dividers
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(
        StoryboardWidgetListingEnum.myoroBasicDividerTitle,
      ),
      isA<MyoroBasicDividerWidgetShowcase>(),
    );
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(
        StoryboardWidgetListingEnum.myoroResizeDividerTitle,
      ),
      isA<MyoroResizeDividerWidgetShowcase>(),
    );

    // Drawers
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroDrawerTitle),
      isA<MyoroDrawerWidgetShowcase>(),
    );

    // Forms
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroFormTitle),
      isA<MyoroFormWidgetShowcase>(),
    );

    // Graphs
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroBarGraphTitle),
      isA<MyoroBarGraphWidgetShowcase>(),
    );
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroPieGraphTitle),
      isA<MyoroPieGraphWidgetShowcase>(),
    );

    // Inputs
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(
        StoryboardWidgetListingEnum.myoroDatePickerInputTitle,
      ),
      isA<MyoroDatePickerInputWidgetShowcase>(),
    );
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroInputTitle),
      isA<MyoroInputWidgetShowcase>(),
    );
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(
        StoryboardWidgetListingEnum.myoroSearchInputTitle,
      ),
      isA<MyoroSearchInputWidgetShowcase>(),
    );

    // Layout builders
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(
        StoryboardWidgetListingEnum.myoroLayoutBuilderTitle,
      ),
      isA<MyoroLayoutBuilderWidgetShowcase>(),
    );

    // Loaders
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(
        StoryboardWidgetListingEnum.myoroCircularLoaderTitle,
      ),
      isA<MyoroCircularLoaderWidgetShowcase>(),
    );

    // Apps
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroAppTitle),
      isA<MyoroAppWidgetShowcase>(),
    );

    // Menus
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroMenuTitle),
      isA<MyoroMenuWidgetShowcase>(),
    );

    // Modals
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroModalTitle),
      isA<MyoroModalWidgetShowcase>(),
    );
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(
        StoryboardWidgetListingEnum.myoroDialogModalTitle,
      ),
      isA<MyoroDialogModalWidgetShowcase>(),
    );

    // Radios
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroRadioTitle),
      isA<MyoroRadioWidgetShowcase>(),
    );
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(
        StoryboardWidgetListingEnum.myoroGroupRadioTitle,
      ),
      isA<MyoroGroupRadioWidgetShowcase>(),
    );

    // Resolvers
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroResolverTitle),
      isA<MyoroResolverWidgetShowcase>(),
    );

    // Screens
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroScreenTitle),
      isA<MyoroScreenWidgetShowcase>(),
    );

    // Sliders
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroSliderTitle),
      isA<MyoroSliderWidgetShowcase>(),
    );

    // Snack bars
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroSnackBarTitle),
      isA<MyoroSnackBarWidgetShowcase>(),
    );

    // Tooltips
    expect(
      StoryboardWidgetListingEnum.getWidgetShowcase(StoryboardWidgetListingEnum.myoroTooltipTitle),
      isA<MyoroTooltipWidgetShowcase>(),
    );

    // Exception case
    expect(
      () => StoryboardWidgetListingEnum.getWidgetShowcase(faker.randomGenerator.string(100)),
      throwsException,
    );
  });

  test('StoryboardWidgetListingEnum getters', () {
    expect(StoryboardWidgetListingEnum.appBars.isAppBars, isTrue);
    expect(StoryboardWidgetListingEnum.buttons.isButtons, isTrue);
    expect(StoryboardWidgetListingEnum.cards.isCards, isTrue);
    expect(StoryboardWidgetListingEnum.carousels.isCarousels, isTrue);
    expect(StoryboardWidgetListingEnum.checkboxes.isCheckboxes, isTrue);
    expect(StoryboardWidgetListingEnum.dividers.isDividers, isTrue);
    expect(StoryboardWidgetListingEnum.drawers.isDrawers, isTrue);
    expect(StoryboardWidgetListingEnum.dropdowns.isDropdowns, isTrue);
    expect(StoryboardWidgetListingEnum.forms.isForms, isTrue);
    expect(StoryboardWidgetListingEnum.graphs.isGraphs, isTrue);
    expect(StoryboardWidgetListingEnum.inputs.isInputs, isTrue);
    expect(StoryboardWidgetListingEnum.layoutBuilders.isLayoutBuilders, isTrue);
    expect(StoryboardWidgetListingEnum.loaders.isLoaders, isTrue);
    expect(StoryboardWidgetListingEnum.apps.isApps, isTrue);
    expect(StoryboardWidgetListingEnum.menus.isMenus, isTrue);
    expect(StoryboardWidgetListingEnum.modals.isModals, isTrue);
    expect(StoryboardWidgetListingEnum.radios.isRadios, isTrue);
    expect(StoryboardWidgetListingEnum.resolvers.isResolvers, isTrue);
    expect(StoryboardWidgetListingEnum.screens.isScreens, isTrue);
    expect(StoryboardWidgetListingEnum.sliders.isSliders, isTrue);
    expect(StoryboardWidgetListingEnum.snackBars.isSnackBars, isTrue);
    expect(StoryboardWidgetListingEnum.tooltips.isTooltips, isTrue);
  });
}
