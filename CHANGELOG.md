# Changelog (of major and minor versions)

## 1.4.0

1. feature: Added `MyoroFontSizeEnum.extraLarge`;
1. refactor: `MyoroDropdown` using `OverlayPortal`/`CompositedTransformTarget`/`CompositedTransformFollower`;
1. improvement: `MyoroMenu`;
1. improvement: Input formatters;
1. improvement: Kill `MyoroDecorationHelper`, `MyoroColorDesignSystem.primary`, `MyoroColorDesignSystem.onPrimary` to encourage good Flutter styling standards;
1. improvement: Set the line length to 100.
1. chore: Remove `finder` functions;
1. chore: `_Enabled` --> `_Provided` in `copyWith` functions;
1. chore: Remove `final` from various classes to allow extensions;

## 1.3.0

1. fix: Selected Widget button was not hovered when selected in storyboard;
1. feature: `MyoroMaterialApp.colorSchemeBuilder` and `MyoroMaterialApp.textThemeBuilder`;
1. feature: Make `MyoroMaterialApp` support `GoRouter`.
1. refactor: `MyoroTypographyDesignSystem`;
1. improvement: `MyoroMaterialApp` test;
1. improvement: Remove global `GestureDetector` in `MyoroMaterialApp` and use `TapRegion` instead;

## 1.2.0

1. improvement: Removed `./lib/themes` directory and moved contents of it in `./lib`;
1. improvement: Moved functions that creates the principal `ThemeData` to `./lib/functions/theme_data`;'
1. improvement: `MyoroColorTheme` -> `MyoroColorDesignSystem`;
1. improvement: `MyoroTypographyTheme` --> `MyoroTypographyDesignSystem`;
1. improvement: Created folder `./lib/design_system` placing the aforementioned `MyoroColorDesignSystem` & `MyoroTypographyDesignSystem` inside of it.

## 1.1.0

1. feature: Set the sdk to `^3.7.2` in `pubspec.yaml` to use with new Dart formatting;
1. feature: Changelog.
1. improvement: Remove the `core` and `commons` directories placing all of their contents in `lib`;
1. improvement: Set the line length to 80;
1. test: Implement all tests (MyoroLocalDatabase wasn't created yet);
