// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_snack_bar_container_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroSnackBarContainerThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSnackBarContainerThemeExtension with $MyoroSnackBarContainerThemeExtensionMixin {}
/// ```
mixin $MyoroSnackBarContainerThemeExtensionMixin
    on ThemeExtension<MyoroSnackBarContainerThemeExtension> {
  MyoroSnackBarContainerThemeExtension get self =>
      this as MyoroSnackBarContainerThemeExtension;

  @override
  MyoroSnackBarContainerThemeExtension copyWith({
    Color? primaryColor,
    SnackBarBehavior? behavior,
    EdgeInsets? margin,
    EdgeInsets? padding,
    double? elevation,
    DismissDirection? dismissDirection,
    Duration? duration,
  }) {
    return MyoroSnackBarContainerThemeExtension(
      primaryColor: primaryColor ?? self.primaryColor,
      behavior: behavior ?? self.behavior,
      margin: margin ?? self.margin,
      padding: padding ?? self.padding,
      elevation: elevation ?? self.elevation,
      dismissDirection: dismissDirection ?? self.dismissDirection,
      duration: duration ?? self.duration,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSnackBarContainerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryColor == self.primaryColor &&
        other.behavior == self.behavior &&
        other.margin == self.margin &&
        other.padding == self.padding &&
        other.elevation == self.elevation &&
        other.dismissDirection == self.dismissDirection &&
        other.duration == self.duration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.primaryColor,
      self.behavior,
      self.margin,
      self.padding,
      self.elevation,
      self.dismissDirection,
      self.duration,
    );
  }

  @override
  String toString() =>
      'MyoroSnackBarContainerThemeExtension(\n'
      '  primaryColor: ${self.primaryColor},\n'
      '  behavior: ${self.behavior},\n'
      '  margin: ${self.margin},\n'
      '  padding: ${self.padding},\n'
      '  elevation: ${self.elevation},\n'
      '  dismissDirection: ${self.dismissDirection},\n'
      '  duration: ${self.duration},\n'
      ');';
}
