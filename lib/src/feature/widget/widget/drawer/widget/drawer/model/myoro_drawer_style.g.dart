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

  @override
  bool operator ==(Object other) {
    return other is MyoroDrawerStyle &&
        other.runtimeType == runtimeType &&
        other.drawerPadding == self.drawerPadding &&
        other.drawerContentPadding == self.drawerContentPadding &&
        other.drawerShape == self.drawerShape &&
        other.titleContentDividerPadding == self.titleContentDividerPadding &&
        other.titleTextStyle == self.titleTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.drawerPadding,
      self.drawerContentPadding,
      self.drawerShape,
      self.titleContentDividerPadding,
      self.titleTextStyle,
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
      ');';
}
