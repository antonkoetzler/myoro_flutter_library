# CHANGELOG

## 2.7.2

- fix: I forgor to update `README.md` :skull:

## 2.7.1

- feature: `MyoroScrollControllerExtension.canScroll`
- refactor: Scrollable widgets (was AI slop before and I took the time to actually make a good implementation)
- improvement: Standardize sizes in `MyoroFontSizeEnum` (incrementing each value by 2)
- improvement: Add `**/*.g.dart` to `.gitignore`
- improvement: Add `lib/src/feature/l10n/gen/` to `.gitignore`
- chore: Delete `docs` and migrate documentation to Notion

## 2.7.0

- feature: `MyoroCurrencyInput`
- feature: `myoroNullableFake`
- feature: `MyoroImage`
- feature: `MyoroField`
- feature: `MyoroStringExtension`
- feature: `MyoroTag`
- feature: `MyoroCheckboxFilter`
- feature: `MyoroRadioFilter`
- feature: `MyoroFilterPanel`
- feature: `MyoroSearchBarInput`
- feature: `MyoroCountryDropdown`
- feature: `MyoroRegionDropdown`
- feature: `MyoroCityDropdown`
- feature: `MyoroEmptyFeedback`
- feature: `MyoroSuccessFeedback`
- feature: `MyoroErrorFeedback`
- feature: `MyoroRequest` (brought back from the dead)
- feature: `MyoroCheckbox.enabled`
- feature: `MyoroCheckbox.disabledOnTapUp`
- feature: `MyoroInputStyle.errorTextStyle`
- feature: `MyoroCountryEnum`
- feature: Adding all languages, countries, localizations, and currencies
- feature: Add time based tools like `MyoroDayEnum` and `MyoroMonthEnum`
- feature: `MyoroInput.minLines` & `MyoroInput.maxLines`
- feature: `MyoroScreen.bottomNavigationBar`
- fix: Date picker not opening in `MyoroDatePickerInput`
- refactor: Remove configuration model pattern
- refactor: Remove `MyoroInput.number` create `MyoroNumberInput`
- refactor: Scale `MyoroTextConfiguration` by making `MyoroText`
- refactor: Scale `MyoroIconConfiguration` by making `MyoroIcon`
- refactor: Rename `MyoroSearchInput` to `MyoroSearchDropdown`
- refactor: `MyoroMenu.searchCallback` --> `MyoroMenu.showSearchBar`
- refactor: Add fields to make `MyoroDialogModal` be able to be used as a form and rename `MyoroDialogModal.child` to `MyoroDialogModal.builder`
- improvement: Add public `Widget`s in a `widget` folder
- refactor: Massive simplification and optimization of `Widget` states

## 2.6.4

- fix: Fix infinite loop in `MyoroRequestController`

## 2.6.3

- feature: `MyoroIndexedStack`
- feature: `kMyoroAnimationDuration`
- feature: `MyoroSingleMenuConfiguration.allowDeselection`
- fix: Label not appearing in input dropdowns
- improvement: Visuals when no on tap is provided in buttons
- improvement: Remove redundant loading state in `MyoroRequest` with sync functions

## 2.6.2

- feature: `MyoroInputStyle.suffixButtonStyle`
- fix: `MyoroInput` lifecycle state management

## 2.6.1

- fix: Fix `pubspec.yaml`s using `myoro_flutter_annotations` as a `path`

## 2.6.0

- feature: `MyoroInputConfiguration.obscureText`
- feature: `MyoroInputConfiguration.showToggleHiddenButton`
- feature: Various changes to `MyoroInputStyle`
- feature: `MyoroScreenConfiguration.drawerEnableOpenDragGesture`
- feature: `MyoroScreenConfiguration.endDrawerEnableOpenDragGesture`
- refactor: Name all notifier suffixes to controllers
- fix: `MyoroInput` state management to avoid `ValueKey` use for specific `Widget` recycling cases
- fix: Clear text button in `MyoroInput` (padding was off and it changed the height of the `MyoroInput` uglily)
- fix: Disable swipe to open drawers when there is no drawer available
- fix: Only allow one selected item for `MyoroSingleAccordion`
- improvement: Rename the storyboard to storybook

## 2.5.7

- chore: Update `myoro_flutter_annotations`

## 2.5.6

- refactor: Post-vibe-code refactor of scrollables
- improvement: Adjusted constraints of modals/bottom sheets
- improvement: Added the MFL logo as the icon in the storybook
- fix: Adjust styling of selected `_TabButton` in `MyoroTabView`

## 2.5.5

- chore: Upgrade `myoro_flutter_annotations`

## 2.5.4

- feature: `MyoroSearchInputConfiguration.label`

## 2.5.3

- chore: Improving pub.dev score

## 2.5.2

- chore: Improving pub.dev score

## 2.5.1

- fix: `CHANGELOG.md`/`CHANGELOG.tmp` issue

## 2.4.1

- fix: `ClipRRect` in `MyoroButton`

## 2.4.0

- feature: `kMyoroEmptyString`
- feature: `ThemeExtension` overriding integrated into MFL `Widget`s and centralization of styling by only passing style fields to `ThemeExtension`s
- feature: `.windsurf` rules
- refactor: `MyoroMenu` --> `MyoroSingularMenu` and `MyoroMultiMenu`
- refactor: Changed all `Widget`s containing "Singular" to be "Single" (i.e. `MyoroSingularDropdown` --> `MyoroSingleDropdown`)
- improvement: Rename `ValueNotifier`s with the controller suffix to notifier (i.e. `MyoroFormController` --> `MyoroFormNotifier`)
- improvement: New tasks added to `tool` and `.vscode`
- improvement: Make fields of all `ThemeExtension`s nullable to allow more customizability
- improvement: Add another DDD layer within a `lib/src/feature/widget/widget/_/widget` for shared implemented within a category of `Widget`s
- improvement: Remove all tests
- chore: Add `copyWith` to models as `myoro_flutter_annotations` does not generate it with `myoroModel`s

## 2.3.2

- chore: Update `myoro_flutter_annotations` to 1.4.4

## 2.3.1

- chore: Upgrade `myoro_flutter_annotations` to 1.4.1

## 2.3.0

- feature: `MyoroTimePickerInput`

## 2.2.2

- fix: Fix 100% coverage after upgrading Flutter

## 2.2.1

- fix: GitHub action to ignore localization files (as they are incorrectly formatted after running `flutter pub get`)
- fix: `MyoroRangeSlider` test

## 2.2.0

- feature: `MyoroImagePicker`
- feature: `MyoroFilePicker`
- feature: `MyoroSlider` (V2) and `MyoroRangeSlider`
- feature: Localization for default text (English, Portuguese, and Spanish)
- refactor: Correctly apply MVVM-C logic and nomenclature in dropdowns
- fix: Various improvements and bug fixes to the storybook
- chore: New documentation added
- improvement: Folder structure

## 2.1.0

- feature: `MyoroTabView`

## 2.0.6

- feature: MyoroFeedback
- feature: `MyoroModal.showBottomSheet`
- improvement: `MyoroModal.show` renamed to `MyoroModal.showModal`
- improvement: Add the `kMyoroMultiplier` constant to centralize design system's values
- improvement: Brighten the color of `MyoroColors.gray1`

## 2.0.5

- chore: Upgrade `myoro_flutter_annotations` to 1.2.4

## 2.0.3

- fix: `MyoroButtonViewModel` test

## 2.0.2

- Fix `MyoroTapStatusEnum.idle` case in `MyoroButton`

## 2.0.1

- feature: `MyoroAppConfiguration.builder`

## 2.0.0

- feature: Added `MyoroFontSizeEnum.extraLarge`
- feature: `myoroFake`
- feature: `MyoroStringExtension`
- feature: Kill `MyoroResolver` and create `MyoroRequest` and `MyoroRequestController`
- feature: Code generated models and `ThemeExtension`s
- refactor: Adopt official Flutter MVVM/DDD architecture
- refactor: Make every `Widget` have a configuration file instead of arguments in the `Widget`
- refactor: Rename `MyoroMaterialApp` to `MyoroApp`
- refactor: Various MFL widgets refactored during MVVM refactor
- improvement: Input formatters
- improvement: Kill `MyoroDecorationHelper`, `MyoroColorDesignSystem.primary`, `MyoroColorDesignSystem.onPrimary` to encourage good Flutter styling standards
- improvement: Kill `MyoroCrudService`
- improvement: Set the line length to 100
- improvement: Remove plural naming
- improvement: Remove `finder` functions
- chore: `_Enabled` --> `_Provided` in `copyWith` functions
- chore: Remove `final` from various classes to allow extensions

## 1.3.1

- Small changes before 2.0.0

## 1.3.0

- fix: Selected Widget button was not hovered when selected in storybook
- feature: `MyoroMaterialApp.colorSchemeBuilder` and `MyoroMaterialApp.textThemeBuilder`
- feature: Make `MyoroMaterialApp` support `GoRouter`
- refactor: `MyoroTypographyDesignSystem`
- improvement: `MyoroMaterialApp` test
- improvement: Remove global `GestureDetector` in `MyoroMaterialApp` and use `TapRegion` instead

## 1.2.0

- improvement: Removed `./lib/themes` directory and moved contents of it in `./lib`
- improvement: Moved functions that creates the principal `ThemeData` to `./lib/functions/theme_data`;
- improvement: `MyoroColorTheme` -> `MyoroColorDesignSystem`
- improvement: `MyoroTypographyTheme` --> `MyoroTypographyDesignSystem`
- improvement: Created folder `./lib/design_system` placing the aforementioned `MyoroColorDesignSystem` & `MyoroTypographyDesignSystem` inside of it

## 1.1.0

- feature: Set the sdk to `^3.7.2` in `pubspec.yaml` to use with new Dart formatting;
- feature: Changelog
- improvement: Remove the `core` and `commons` directories placing all of their contents in `lib`
- improvement: Set the line length to 80
- test: Implement all tests (test of `MyoroLocalDatabase` wasn't created yet)
