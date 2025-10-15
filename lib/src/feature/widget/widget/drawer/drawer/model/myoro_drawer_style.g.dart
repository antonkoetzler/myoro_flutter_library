// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_drawer_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDrawerStyle] once the code is generated.
///
/// ```dart
/// class MyoroDrawerStyle with _$MyoroDrawerStyleMixin {}
/// ```
mixin _$MyoroDrawerStyleMixin {
  MyoroDrawerStyle get self => this as MyoroDrawerStyle;

  MyoroDrawerStyle copyWith({
    EdgeInsets? drawerPadding,
    bool drawerPaddingProvided = true,
    EdgeInsets? drawerContentPadding,
    bool drawerContentPaddingProvided = true,
    ShapeBorder? drawerShape,
    bool drawerShapeProvided = true,
    EdgeInsets? titleContentDividerPadding,
    bool titleContentDividerPaddingProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    EdgeInsets? closeButtonContentPadding,
    bool closeButtonContentPaddingProvided = true,
  }) {
    return MyoroDrawerStyle(
      drawerPadding: drawerPaddingProvided ? (drawerPadding ?? self.drawerPadding) : null,
      drawerContentPadding: drawerContentPaddingProvided ? (drawerContentPadding ?? self.drawerContentPadding) : null,
      drawerShape: drawerShapeProvided ? (drawerShape ?? self.drawerShape) : null,
      titleContentDividerPadding: titleContentDividerPaddingProvided
          ? (titleContentDividerPadding ?? self.titleContentDividerPadding)
          : null,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? self.titleTextStyle) : null,
      closeButtonContentPadding: closeButtonContentPaddingProvided
          ? (closeButtonContentPadding ?? self.closeButtonContentPadding)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDrawerStyle &&
        other.runtimeType == runtimeType &&
        other.drawerPadding == self.drawerPadding &&
        other.drawerContentPadding == self.drawerContentPadding &&
        other.drawerShape == self.drawerShape &&
        other.titleContentDividerPadding == self.titleContentDividerPadding &&
        other.titleTextStyle == self.titleTextStyle &&
        other.closeButtonContentPadding == self.closeButtonContentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.drawerPadding,
      self.drawerContentPadding,
      self.drawerShape,
      self.titleContentDividerPadding,
      self.titleTextStyle,
      self.closeButtonContentPadding,
    );
  }

  @override
  String toString() =>
      'MyoroDrawerStyle(\n'
      '  drawerPadding: ${self.drawerPadding},\n'
      '  drawerContentPadding: ${self.drawerContentPadding},\n'
      '  drawerShape: ${self.drawerShape},\n'
      '  titleContentDividerPadding: ${self.titleContentDividerPadding},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  closeButtonContentPadding: ${self.closeButtonContentPadding},\n'
      ');';
}
