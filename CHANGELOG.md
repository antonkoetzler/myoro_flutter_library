# Changelog (of major and minor versions)

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
