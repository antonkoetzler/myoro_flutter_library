// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_app_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

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
    List<ThemeExtension<ThemeExtension<dynamic>>> Function(
      bool,
      ColorScheme,
      TextTheme,
    )?
    themeExtensionsBuilder,
    bool themeExtensionsBuilderProvided = true,
    Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
    bool localizationsDelegatesProvided = true,
    Iterable<Locale>? supportedLocales,
    bool supportedLocalesProvided = true,
    RouterConfig<Object>? router,
    bool routerProvided = true,
    Widget? home,
    bool homeProvided = true,
  }) {
    return MyoroAppConfiguration(
      title: titleProvided ? (title ?? this.title) : null,
      themeMode: themeModeProvided ? (themeMode ?? this.themeMode) : null,
      colorSchemeBuilder:
          colorSchemeBuilderProvided
              ? (colorSchemeBuilder ?? this.colorSchemeBuilder)
              : null,
      textThemeBuilder:
          textThemeBuilderProvided
              ? (textThemeBuilder ?? this.textThemeBuilder)
              : null,
      themeExtensionsBuilder:
          themeExtensionsBuilderProvided
              ? (themeExtensionsBuilder ?? this.themeExtensionsBuilder)
              : null,
      localizationsDelegates:
          localizationsDelegatesProvided
              ? (localizationsDelegates ?? this.localizationsDelegates)
              : null,
      supportedLocales:
          supportedLocalesProvided
              ? (supportedLocales ?? this.supportedLocales)
              : null,
      router: routerProvided ? (router ?? this.router) : null,
      home: homeProvided ? (home ?? this.home) : null,
    );
  }
}

/// Apply this mixin to [MyoroAppConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroAppConfiguration with $MyoroAppConfigurationMixin {}
/// ```
mixin $MyoroAppConfigurationMixin {
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
        other.home == self.home;
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
      ');';
}
