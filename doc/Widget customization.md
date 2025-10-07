# Customizing `Widget`s

MFL provides two primary ways to customize widgets: `ThemeExtensions` for global customization and style models for per-`Widget` customization. Style models serve as the source of truth for customization, taking precedence over `ThemeExtension`s when both are provided.

## ThemeExtensions: Global Customization

`ThemeExtension`s allow you to customize all instances of a widget across your entire application. Every MFL `Widget` with styling properties has a style model which has it's corresponding `ThemeExtension` that defines default styling values.

### How ThemeExtensions Work

1. **Global Scope**: ThemeExtensions are registered in your `MyoroApp`'s theme and apply to all instances of the widget
2. **Default Values**: They provide sensible defaults for all styling properties through the `builder` factory
3. **Theme Integration**: They integrate seamlessly with Flutter's theming system
4. **Overriding**: You may pass a `ThemeExtension` of an MFL `Widget`, i.e. `MyoroButtonThemeExtension` to `MyoroAppConfiguration.themeExtensionsBuilder` and your `ThemeExtension` will override said MFL `Widget`s `ThemeExtension` to change the styling globally

### Example Usage

```dart
// Register ThemeExtensions in your app theme
ThemeData(
  extensions: [
    MyoroButtonThemeExtension.builder(colorScheme),
    MyoroCardThemeExtension.builder(colorScheme, textTheme),
    // ... other extensions
  ],
)
```

## Style Models: Per-Widget Customization

Style models provide fine-grained control over individual widget instances. They override ThemeExtension values when both are provided, making them the source of truth for customization.

### How Style Models Work

1. **Per-Widget Control**: Each widget instance can have its own style model
2. **Override Behavior**: Style model values take precedence over `ThemeExtension` values
3. **Fallback System**: If a style model property is null, the widget falls back to the `ThemeExtension` value

```dart
MyoroButton(
  style: MyoroButtonStyle(
    backgroundIdleColor: Colors.red,
    borderRadius: BorderRadius.circular(12),
    // Only these properties override the theme
    // Other properties use ThemeExtension defaults
  ),
  child: Text('Custom Button'),
)
```

## Customization Priority

The customization system follows this priority order (highest to lowest):

1. **Style Model Properties** - Direct widget instance customization
2. **ThemeExtension Properties** - Global theme defaults
3. **Flutter Defaults** - Built-in Flutter widget defaults

### Implementation Pattern

```dart
// Inside widget build method
final themeExtension = context.resolveThemeExtension<MyoroWidgetThemeExtension>();
final style = context.watch<MyoroWidgetStyle>();

// Style model takes precedence, falls back to theme extension
final backgroundColor = style.backgroundColor ?? themeExtension.backgroundColor;
final borderRadius = style.borderRadius ?? themeExtension.borderRadius;
```

## Best Practices

1. Use `ThemeExtension`s for consistent styling across your app
2. Use style models when you need to customize specific `Widget` instances
3. Style models are the source of truth - they always override `ThemeExtension` values
4. Provide sensible defaults in `ThemeExtension`s to ensure widgets work out of the box
5. Use null values in style models to inherit from `ThemeExtension`s when appropriate
