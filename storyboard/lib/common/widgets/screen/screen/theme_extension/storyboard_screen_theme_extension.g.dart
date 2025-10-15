// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storyboard_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [StoryboardScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class StoryboardScreenThemeExtension with _$StoryboardScreenThemeExtensionMixin {}
/// ```
mixin _$StoryboardScreenThemeExtensionMixin
    on ThemeExtension<StoryboardScreenThemeExtension> {
  StoryboardScreenThemeExtension get self =>
      this as StoryboardScreenThemeExtension;

  @override
  StoryboardScreenThemeExtension copyWith({
    double? spacing,
    IconData? previousPageButtonIcon,
    EdgeInsets? buttonPadding,
    TextStyle? titleTextStyle,
    IconData? toggleThemeButtonIcon,
  }) {
    return StoryboardScreenThemeExtension(
      spacing: spacing ?? self.spacing,
      previousPageButtonIcon:
          previousPageButtonIcon ?? self.previousPageButtonIcon,
      buttonPadding: buttonPadding ?? self.buttonPadding,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      toggleThemeButtonIcon:
          toggleThemeButtonIcon ?? self.toggleThemeButtonIcon,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StoryboardScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.previousPageButtonIcon == self.previousPageButtonIcon &&
        other.buttonPadding == self.buttonPadding &&
        other.titleTextStyle == self.titleTextStyle &&
        other.toggleThemeButtonIcon == self.toggleThemeButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.spacing,
      self.previousPageButtonIcon,
      self.buttonPadding,
      self.titleTextStyle,
      self.toggleThemeButtonIcon,
    );
  }

  @override
  String toString() =>
      'StoryboardScreenThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  previousPageButtonIcon: ${self.previousPageButtonIcon},\n'
      '  buttonPadding: ${self.buttonPadding},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  toggleThemeButtonIcon: ${self.toggleThemeButtonIcon},\n'
      ');';
}
