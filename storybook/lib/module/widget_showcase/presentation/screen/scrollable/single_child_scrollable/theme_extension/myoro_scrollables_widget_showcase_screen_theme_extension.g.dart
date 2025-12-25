// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_scrollables_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroScrollablesWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroScrollablesWidgetShowcaseScreenThemeExtension with _$MyoroScrollablesWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroScrollablesWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension> {
  MyoroScrollablesWidgetShowcaseScreenThemeExtension get self =>
      this as MyoroScrollablesWidgetShowcaseScreenThemeExtension;

  @override
  MyoroScrollablesWidgetShowcaseScreenThemeExtension copyWith({
    double? spacing,
    double? itemHeight,
    Color? singleChildScrollableItemColor,
    Color? listScrollableItemColor,
  }) {
    return MyoroScrollablesWidgetShowcaseScreenThemeExtension(
      spacing: spacing ?? self.spacing,
      itemHeight: itemHeight ?? self.itemHeight,
      singleChildScrollableItemColor: singleChildScrollableItemColor ?? self.singleChildScrollableItemColor,
      listScrollableItemColor: listScrollableItemColor ?? self.listScrollableItemColor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollablesWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == self.spacing &&
        other.itemHeight == self.itemHeight &&
        other.singleChildScrollableItemColor == self.singleChildScrollableItemColor &&
        other.listScrollableItemColor == self.listScrollableItemColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.spacing,
      self.itemHeight,
      self.singleChildScrollableItemColor,
      self.listScrollableItemColor,
    );
  }

  @override
  String toString() =>
      'MyoroScrollablesWidgetShowcaseScreenThemeExtension(\n'
      '  spacing: ${self.spacing},\n'
      '  itemHeight: ${self.itemHeight},\n'
      '  singleChildScrollableItemColor: ${self.singleChildScrollableItemColor},\n'
      '  listScrollableItemColor: ${self.listScrollableItemColor},\n'
      ');';
}
