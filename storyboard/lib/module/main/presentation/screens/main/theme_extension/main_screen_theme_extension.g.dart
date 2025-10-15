// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MainScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MainScreenThemeExtension with _$MainScreenThemeExtensionMixin {}
/// ```
mixin _$MainScreenThemeExtensionMixin
    on ThemeExtension<MainScreenThemeExtension> {
  MainScreenThemeExtension get self => this as MainScreenThemeExtension;

  @override
  MainScreenThemeExtension copyWith({
    double? spacing,
    EdgeInsets? widgetListingAccordionSearchBarMargin,
  }) {
    return MainScreenThemeExtension(
      spacing: spacing ?? self.spacing,
      widgetListingAccordionSearchBarMargin:
          widgetListingAccordionSearchBarMargin ??
          self.widgetListingAccordionSearchBarMargin,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MainScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.widgetListingAccordionSearchBarMargin ==
            self.widgetListingAccordionSearchBarMargin;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.spacing,
      self.widgetListingAccordionSearchBarMargin,
    );
  }

  @override
  String toString() =>
      'MainScreenThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  widgetListingAccordionSearchBarMargin: ${self.widgetListingAccordionSearchBarMargin},\n'
      ');';
}
