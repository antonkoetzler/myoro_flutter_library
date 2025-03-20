# Changelog (of major and minor versions)

## 1.2.0

1. Removed `./lib/themes` and placed contents of the folder in `./lib`;
1. Moved functions that creates the principal `ThemeData` to `./lib/functions/theme_data`;'
1. `MyoroColorTheme` -> `MyoroColorDesignSystem`;
1. `MyoroTypographyTheme` --> `MyoroTypographyDesignSystem`;
1. Created folder `./lib/design_system` placing the aforementioned `MyoroColorDesignSystem` & `MyoroTypographyDesignSystem` inside of it.

## 1.1.0

1. Implement all tests (MyoroLocalDatabase wasn't created yet);
1. Remove the `core` and `commons` directories placing all of their contents in `lib`;
1. Set the line length to 80;
1. Set the sdk to `^3.7.2` in `pubspec.yaml` to use with new Dart formatting;
1. Changelog.
