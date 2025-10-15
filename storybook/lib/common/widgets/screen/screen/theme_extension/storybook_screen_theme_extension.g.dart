// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storybook_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [StorybookScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class StorybookScreenThemeExtension with _$StorybookScreenThemeExtensionMixin {}
/// ```
mixin _$StorybookScreenThemeExtensionMixin on ThemeExtension<StorybookScreenThemeExtension> {
  StorybookScreenThemeExtension get self => this as StorybookScreenThemeExtension;

  @override
  StorybookScreenThemeExtension copyWith({
    double? spacing,
    IconData? previousPageButtonIcon,
    EdgeInsets? buttonPadding,
    TextStyle? titleTextStyle,
    IconData? toggleThemeButtonIcon,
  }) {
    return StorybookScreenThemeExtension(
      spacing: spacing ?? self.spacing,
      previousPageButtonIcon: previousPageButtonIcon ?? self.previousPageButtonIcon,
      buttonPadding: buttonPadding ?? self.buttonPadding,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      toggleThemeButtonIcon: toggleThemeButtonIcon ?? self.toggleThemeButtonIcon,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StorybookScreenThemeExtension &&
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
      'StorybookScreenThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  previousPageButtonIcon: ${self.previousPageButtonIcon},\n'
      '  buttonPadding: ${self.buttonPadding},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  toggleThemeButtonIcon: ${self.toggleThemeButtonIcon},\n'
      ');';
}
