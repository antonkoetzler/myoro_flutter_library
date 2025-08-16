# CHANGELOG

## 2.2.1

- fix: GitHub action to ignore localization files (as they are incorrectly formatted after running `flutter pub get`)
- fix: `MyoroRangeSlider` test

## 2.2.0

- feature: `MyoroImagePicker`
- feature: `MyoroFilePicker`
- feature: `MyoroSlider` (V2) and `MyoroRangeSlider`
- feature: Localization for default text (English, Portuguese, and Spanish)
- refactor: Correctly apply MVVM-C logic and nomenclature in dropdowns
- fix: Various improvements and bug fixes to the storyboard
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

- fix: Selected Widget button was not hovered when selected in storyboard
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
