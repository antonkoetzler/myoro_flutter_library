<h1 align='center'>Mental checklist when developing</h1>

## What files does every MFL `Widget` need?

- `Widget`: `foo.dart` ~~& `foo_test.dart`~~
- `ThemeExtension`: `foo_theme_extension.dart` ~~& `foo_theme_extension_test.dart`~~
- Widget showcase in storyboard: `foo_widget_showcase.dart` ~~& `foo_widget_showcase_test.dart`~~
- `ThemeExtension` of widget showcase: `foo_widget_showcase_theme_extension.dart` ~~& `foo_widget_showcase_theme_extension_test.dart`~~

## What do I need to make sure of when I create a new `Widget`?

- `ThemeExtension` of the `Widget` is added to `create_myoro_theme_extensions.dart`
- `Widget`'s widget showcase is added to `myoro_widget_list_enum.dart` so it is able to be views in the storyboard
