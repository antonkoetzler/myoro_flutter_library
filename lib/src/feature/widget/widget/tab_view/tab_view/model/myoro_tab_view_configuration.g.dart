// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_tab_view_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTabViewConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroTabViewConfiguration with _$MyoroTabViewConfigurationMixin {}
/// ```
mixin _$MyoroTabViewConfigurationMixin {
  MyoroTabViewConfiguration get self => this as MyoroTabViewConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroTabViewConfiguration &&
        other.runtimeType == runtimeType &&
        other.initiallySelectedTabIndex == self.initiallySelectedTabIndex &&
        other.tabs == self.tabs;
  }

  @override
  int get hashCode {
    return Object.hash(self.initiallySelectedTabIndex, self.tabs);
  }

  @override
  String toString() =>
      'MyoroTabViewConfiguration(\n'
      '  initiallySelectedTabIndex: ${self.initiallySelectedTabIndex},\n'
      '  tabs: ${self.tabs},\n'
      ');';
}
