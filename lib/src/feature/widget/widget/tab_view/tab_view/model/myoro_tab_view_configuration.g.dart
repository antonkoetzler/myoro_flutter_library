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

  MyoroTabViewConfiguration copyWith({
    int? initiallySelectedTabIndex,
    double? tabButtonIconSize,
    bool tabButtonIconSizeProvided = true,
    TextStyle? tabButtonTextStyle,
    bool tabButtonTextStyleProvided = true,
    List<MyoroTabViewTab>? tabs,
  }) {
    return MyoroTabViewConfiguration(
      initiallySelectedTabIndex: initiallySelectedTabIndex ?? self.initiallySelectedTabIndex,
      tabButtonIconSize: tabButtonIconSizeProvided ? (tabButtonIconSize ?? self.tabButtonIconSize) : null,
      tabButtonTextStyle: tabButtonTextStyleProvided ? (tabButtonTextStyle ?? self.tabButtonTextStyle) : null,
      tabs: tabs ?? self.tabs,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTabViewConfiguration &&
        other.runtimeType == runtimeType &&
        other.initiallySelectedTabIndex == self.initiallySelectedTabIndex &&
        other.tabButtonIconSize == self.tabButtonIconSize &&
        other.tabButtonTextStyle == self.tabButtonTextStyle &&
        other.tabs == self.tabs;
  }

  @override
  int get hashCode {
    return Object.hash(self.initiallySelectedTabIndex, self.tabButtonIconSize, self.tabButtonTextStyle, self.tabs);
  }

  @override
  String toString() =>
      'MyoroTabViewConfiguration(\n'
      '  initiallySelectedTabIndex: ${self.initiallySelectedTabIndex},\n'
      '  tabButtonIconSize: ${self.tabButtonIconSize},\n'
      '  tabButtonTextStyle: ${self.tabButtonTextStyle},\n'
      '  tabs: ${self.tabs},\n'
      ');';
}
