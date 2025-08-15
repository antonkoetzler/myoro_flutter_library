# Customizing `Widget`s

## Configuration models

Configuration models of `Widget`s have various fields to customize the look of the `Widget`. However, these configuration models do not have complete customization capabilities.

## `ThemeExtension` overriding

If you want to customize every part of a `Widget` globally, you may create your own MFL `ThemeExtension` (i.e. `MyoroAppBarThemeExtension`) and pass it to your `MyoroApp`'s `MyoroAppConfiguration.themeExtensionsBuilder`. This will override the default MFL `ThemeExtension`.
