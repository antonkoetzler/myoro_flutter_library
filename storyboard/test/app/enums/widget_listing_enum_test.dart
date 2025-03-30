import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [WidgetListingEnum].
void main() {
  test('WidgetListingEnum value members', () {
    expect(WidgetListingEnum.appBars.widgetCategory, 'App bars');
    expect(WidgetListingEnum.appBars.widgetNames, ['MyoroAppBar']);

    expect(WidgetListingEnum.buttons.widgetCategory, 'Buttons');
    expect(WidgetListingEnum.buttons.widgetNames, [
      'MyoroHoverButton',
      'MyoroIconTextHoverButton',
    ]);

    expect(WidgetListingEnum.cards.widgetCategory, 'Cards');
    expect(WidgetListingEnum.cards.widgetNames, ['MyoroCard']);

    expect(WidgetListingEnum.carousels.widgetCategory, 'Carousels');
    expect(WidgetListingEnum.carousels.widgetNames, ['MyoroCarousel']);

    expect(WidgetListingEnum.checkboxes.widgetCategory, 'Checkboxes');
    expect(WidgetListingEnum.checkboxes.widgetNames, [
      'MyoroCheckbox',
      'MyoroGroupCheckbox',
    ]);

    expect(WidgetListingEnum.dividers.widgetCategory, 'Dividers');
    expect(WidgetListingEnum.dividers.widgetNames, [
      'MyoroBasicDivider',
      'MyoroResizeDivider',
    ]);

    expect(WidgetListingEnum.drawers.widgetCategory, 'Drawers');
    expect(WidgetListingEnum.drawers.widgetNames, ['MyoroDrawer']);

    expect(WidgetListingEnum.dropdowns.widgetCategory, 'Dropdowns');
    expect(WidgetListingEnum.dropdowns.widgetNames, [
      'MyoroSingularDropdown',
      'MyoroMultiDropdown',
    ]);

    expect(WidgetListingEnum.forms.widgetCategory, 'Forms');
    expect(WidgetListingEnum.forms.widgetNames, ['MyoroForm']);

    expect(WidgetListingEnum.graphs.widgetCategory, 'Graphs');
    expect(WidgetListingEnum.graphs.widgetNames, [
      'MyoroBarGraph',
      'MyoroPieGraph',
    ]);

    expect(WidgetListingEnum.inputs.widgetCategory, 'Inputs');
    expect(WidgetListingEnum.inputs.widgetNames, [
      'MyoroDatePickerInput',
      'MyoroInput',
      'MyoroSearchInput',
    ]);

    expect(WidgetListingEnum.layoutBuilders.widgetCategory, 'Layout builders');
    expect(WidgetListingEnum.layoutBuilders.widgetNames, [
      'MyoroLayoutBuilder',
    ]);

    expect(WidgetListingEnum.loaders.widgetCategory, 'Loaders');
    expect(WidgetListingEnum.loaders.widgetNames, ['MyoroCircularLoader']);

    expect(WidgetListingEnum.materialApps.widgetCategory, 'Material apps');
    expect(WidgetListingEnum.materialApps.widgetNames, ['MyoroMaterialApp']);

    expect(WidgetListingEnum.menus.widgetCategory, 'Menus');
    expect(WidgetListingEnum.menus.widgetNames, ['MyoroMenu']);

    expect(WidgetListingEnum.modals.widgetCategory, 'Modals');
    expect(WidgetListingEnum.modals.widgetNames, [
      'MyoroModal',
      'MyoroDialogModal',
    ]);

    expect(WidgetListingEnum.radios.widgetCategory, 'Radios');
    expect(WidgetListingEnum.radios.widgetNames, [
      'MyoroRadio',
      'MyoroGroupRadio',
    ]);

    expect(WidgetListingEnum.resolvers.widgetCategory, 'Resolvers');
    expect(WidgetListingEnum.resolvers.widgetNames, ['MyoroResolver']);

    expect(WidgetListingEnum.screens.widgetCategory, 'Screens');
    expect(WidgetListingEnum.screens.widgetNames, ['MyoroScreen']);

    expect(WidgetListingEnum.sliders.widgetCategory, 'Sliders');
    expect(WidgetListingEnum.sliders.widgetNames, ['MyoroSlider']);

    expect(WidgetListingEnum.snackBars.widgetCategory, 'Snack bars');
    expect(WidgetListingEnum.snackBars.widgetNames, ['MyoroSnackBar']);

    expect(WidgetListingEnum.tables.widgetCategory, 'Tables');
    expect(WidgetListingEnum.tables.widgetNames, ['MyoroTable']);

    expect(WidgetListingEnum.tooltips.widgetCategory, 'Tooltips');
    expect(WidgetListingEnum.tooltips.widgetNames, ['MyoroTooltip']);
  });

  test('WidgetListingEnum.widgetViewerWidget', () {
    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroAppBarTitle),
      isA<MyoroAppBarWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroHoverButtonTitle,
      ),
      isA<MyoroHoverButtonWidgetShowcase>(),
    );
    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroIconTextHoverButtonTitle,
      ),
      isA<MyoroIconTextHoverButtonWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroCardTitle),
      isA<MyoroCardWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroCarouselTitle,
      ),
      isA<MyoroCarouselWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroCheckboxTitle,
      ),
      isA<MyoroCheckboxWidgetShowcase>(),
    );
    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroGroupCheckboxTitle,
      ),
      isA<MyoroGroupCheckboxWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroBasicDividerTitle,
      ),
      isA<MyoroBasicDividerWidgetShowcase>(),
    );
    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroResizeDividerTitle,
      ),
      isA<MyoroResizeDividerWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroDrawerTitle),
      isA<MyoroDrawerWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroFormTitle),
      isA<MyoroFormWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroBarGraphTitle,
      ),
      isA<MyoroBarGraphWidgetShowcase>(),
    );
    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroPieGraphTitle,
      ),
      isA<MyoroPieGraphWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroDatePickerInputTitle,
      ),
      isA<MyoroDatePickerInputWidgetShowcase>(),
    );
    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroInputTitle),
      isA<MyoroInputWidgetShowcase>(),
    );
    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroSearchInputTitle,
      ),
      isA<MyoroSearchInputWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroLayoutBuilderTitle,
      ),
      isA<MyoroLayoutBuilderWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroCircularLoaderTitle,
      ),
      isA<MyoroCircularLoaderWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroMaterialAppTitle,
      ),
      isA<MyoroMaterialAppWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroMenuTitle),
      isA<MyoroMenuWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroModalTitle),
      isA<MyoroModalWidgetShowcase>(),
    );
    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroDialogModalTitle,
      ),
      isA<MyoroDialogModalWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroRadioTitle),
      isA<MyoroRadioWidgetShowcase>(),
    );
    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroGroupRadioTitle,
      ),
      isA<MyoroGroupRadioWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroResolverTitle,
      ),
      isA<MyoroResolverWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroScreenTitle),
      isA<MyoroScreenWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroSliderTitle),
      isA<MyoroSliderWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(
        WidgetListingEnum.myoroSnackBarTitle,
      ),
      isA<MyoroSnackBarWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroTableTitle),
      isA<MyoroTableWidgetShowcase>(),
    );

    expect(
      WidgetListingEnum.widgetViewerWidget(WidgetListingEnum.myoroTooltipTitle),
      isA<MyoroTooltipWidgetShowcase>(),
    );

    expect(
      () => WidgetListingEnum.widgetViewerWidget(
        faker.randomGenerator.string(100),
      ),
      throwsException,
    );
  });

  test('WidgetListingEnum getters', () {
    expect(WidgetListingEnum.appBars.isAppBars, isTrue);
    expect(WidgetListingEnum.buttons.isButtons, isTrue);
    expect(WidgetListingEnum.cards.isCards, isTrue);
    expect(WidgetListingEnum.carousels.isCarousels, isTrue);
    expect(WidgetListingEnum.checkboxes.isCheckboxes, isTrue);
    expect(WidgetListingEnum.dividers.isDividers, isTrue);
    expect(WidgetListingEnum.drawers.isDrawers, isTrue);
    expect(WidgetListingEnum.dropdowns.isDropdowns, isTrue);
    expect(WidgetListingEnum.forms.isForms, isTrue);
    expect(WidgetListingEnum.graphs.isGraphs, isTrue);
    expect(WidgetListingEnum.inputs.isInputs, isTrue);
    expect(WidgetListingEnum.layoutBuilders.isLayoutBuilders, isTrue);
    expect(WidgetListingEnum.loaders.isLoaders, isTrue);
    expect(WidgetListingEnum.materialApps.isMaterialApps, isTrue);
    expect(WidgetListingEnum.menus.isMenus, isTrue);
    expect(WidgetListingEnum.modals.isModals, isTrue);
    expect(WidgetListingEnum.radios.isRadios, isTrue);
    expect(WidgetListingEnum.resolvers.isResolvers, isTrue);
    expect(WidgetListingEnum.screens.isScreens, isTrue);
    expect(WidgetListingEnum.sliders.isSliders, isTrue);
    expect(WidgetListingEnum.snackBars.isSnackBars, isTrue);
    expect(WidgetListingEnum.tables.isTables, isTrue);
    expect(WidgetListingEnum.tooltips.isTooltips, isTrue);
  });
}
