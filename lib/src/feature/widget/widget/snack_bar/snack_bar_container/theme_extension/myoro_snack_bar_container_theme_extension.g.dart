// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_snack_bar_container_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSnackBarContainerThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSnackBarContainerThemeExtension with _$MyoroSnackBarContainerThemeExtensionMixin {}
/// ```
mixin _$MyoroSnackBarContainerThemeExtensionMixin
    on ThemeExtension<MyoroSnackBarContainerThemeExtension> {
  MyoroSnackBarContainerThemeExtension get self =>
      this as MyoroSnackBarContainerThemeExtension;

  @override
  MyoroSnackBarContainerThemeExtension copyWith({
    Color? primaryColor,
    bool primaryColorProvided = true,
    SnackBarBehavior? behavior,
    bool behaviorProvided = true,
    EdgeInsets? margin,
    bool marginProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    double? elevation,
    bool elevationProvided = true,
    DismissDirection? dismissDirection,
    bool dismissDirectionProvided = true,
  }) {
    return MyoroSnackBarContainerThemeExtension(
      primaryColor: primaryColorProvided
          ? (primaryColor ?? self.primaryColor)
          : null,
      behavior: behaviorProvided ? (behavior ?? self.behavior) : null,
      margin: marginProvided ? (margin ?? self.margin) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      elevation: elevationProvided ? (elevation ?? self.elevation) : null,
      dismissDirection: dismissDirectionProvided
          ? (dismissDirection ?? self.dismissDirection)
          : null,
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
        other.dismissDirection == self.dismissDirection;
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
      ');';
}
