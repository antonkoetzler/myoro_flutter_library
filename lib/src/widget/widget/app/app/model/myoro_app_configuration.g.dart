// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_app_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroAppConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroAppConfiguration with _$MyoroAppConfigurationMixin {}
/// ```
mixin _$MyoroAppConfigurationMixin {
  MyoroAppConfiguration get self => this as MyoroAppConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroAppConfiguration &&
        other.runtimeType == runtimeType &&
        other.title == self.title &&
        other.themeMode == self.themeMode &&
        other.colorSchemeBuilder == self.colorSchemeBuilder &&
        other.textThemeBuilder == self.textThemeBuilder &&
        other.themeExtensionsBuilder == self.themeExtensionsBuilder &&
        other.localizationsDelegates == self.localizationsDelegates &&
        other.supportedLocales == self.supportedLocales &&
        other.router == self.router &&
        other.home == self.home &&
        other.builder == self.builder;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.title,
      self.themeMode,
      self.colorSchemeBuilder,
      self.textThemeBuilder,
      self.themeExtensionsBuilder,
      self.localizationsDelegates,
      self.supportedLocales,
      self.router,
      self.home,
      self.builder,
    );
  }

  @override
  String toString() =>
      'MyoroAppConfiguration(\n'
      '  title: ${self.title},\n'
      '  themeMode: ${self.themeMode},\n'
      '  colorSchemeBuilder: ${self.colorSchemeBuilder},\n'
      '  textThemeBuilder: ${self.textThemeBuilder},\n'
      '  themeExtensionsBuilder: ${self.themeExtensionsBuilder},\n'
      '  localizationsDelegates: ${self.localizationsDelegates},\n'
      '  supportedLocales: ${self.supportedLocales},\n'
      '  router: ${self.router},\n'
      '  home: ${self.home},\n'
      '  builder: ${self.builder},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroAppConfigurationExtension on MyoroAppConfiguration {
  MyoroAppConfiguration copyWith({
    String? title,
    bool titleProvided = true,
    ThemeMode? themeMode,
    bool themeModeProvided = true,
    ColorScheme Function(ColorScheme)? colorSchemeBuilder,
    bool colorSchemeBuilderProvided = true,
    TextTheme Function(TextTheme)? textThemeBuilder,
    bool textThemeBuilderProvided = true,
    List<ThemeExtension<ThemeExtension<dynamic>>> Function(bool, ColorScheme, TextTheme)? themeExtensionsBuilder,
    bool themeExtensionsBuilderProvided = true,
    Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
    bool localizationsDelegatesProvided = true,
    Iterable<Locale>? supportedLocales,
    bool supportedLocalesProvided = true,
    RouterConfig<Object>? router,
    bool routerProvided = true,
    Widget? home,
    bool homeProvided = true,
    Widget Function(BuildContext, Widget?)? builder,
    bool builderProvided = true,
  }) {
    return MyoroAppConfiguration(
      title: titleProvided ? (title ?? self.title) : null,
      themeMode: themeModeProvided ? (themeMode ?? self.themeMode) : null,
      colorSchemeBuilder: colorSchemeBuilderProvided ? (colorSchemeBuilder ?? self.colorSchemeBuilder) : null,
      textThemeBuilder: textThemeBuilderProvided ? (textThemeBuilder ?? self.textThemeBuilder) : null,
      themeExtensionsBuilder:
          themeExtensionsBuilderProvided ? (themeExtensionsBuilder ?? self.themeExtensionsBuilder) : null,
      localizationsDelegates:
          localizationsDelegatesProvided ? (localizationsDelegates ?? self.localizationsDelegates) : null,
      supportedLocales: supportedLocalesProvided ? (supportedLocales ?? self.supportedLocales) : null,
      router: routerProvided ? (router ?? self.router) : null,
      home: homeProvided ? (home ?? self.home) : null,
      builder: builderProvided ? (builder ?? self.builder) : null,
    );
  }
}
