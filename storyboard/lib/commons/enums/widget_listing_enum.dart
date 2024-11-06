import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// Enum for all for all of the widgets we showcase in the storyboard.
enum WidgetListingEnum {
  appBars('App bars', [
    myoroAppBarTitle,
  ]),
  bodies('Bodies', [
    myoroBodyTitle,
  ]),
  buttons('Buttons', [
    myoroHoverButtonTitle,
    myoroIconTextHoverButtonTitle,
  ]),
  dividers('Dividers', [
    myoroBasicDividerTitle,
    myoroResizeDividerTitle,
  ]),
  materialApps('Material apps', [
    myoroMaterialAppTitle,
  ]),
  screens('Screens', [
    myoroScreenTitle,
  ]),
  scrollables('Scrollables', [
    myoroScrollableTitle,
  ]);

  final String widgetCategory;
  final List<String> widgetNames;

  const WidgetListingEnum(this.widgetCategory, this.widgetNames);

  static const myoroAppBarTitle = 'MyoroAppBar';
  static const myoroBodyTitle = 'MyoroBody';
  static const myoroHoverButtonTitle = 'MyoroHoverButton';
  static const myoroIconTextHoverButtonTitle = 'MyoroIconTextHoverButton';
  static const myoroBasicDividerTitle = 'MyoroBasicDivider';
  static const myoroResizeDividerTitle = 'MyoroResizeDivider';
  static const myoroMaterialAppTitle = 'MyoroMaterialApp';
  static const myoroScreenTitle = 'MyoroScreen';
  static const myoroScrollableTitle = 'MyotoScrollable';

  /// Widget that will be displayed in [_WidgetViewer].
  static Widget widgetViewerWidget(String widgetName) {
    return switch (widgetName) {
      myoroAppBarTitle => MyoroAppBarWidgetShowcase(),
      myoroBodyTitle => throw UnimplementedError(),
      myoroHoverButtonTitle => throw UnimplementedError(),
      myoroIconTextHoverButtonTitle => throw UnimplementedError(),
      myoroBasicDividerTitle => throw UnimplementedError(),
      myoroResizeDividerTitle => throw UnimplementedError(),
      myoroMaterialAppTitle => throw UnimplementedError(),
      myoroScreenTitle => throw UnimplementedError(),
      myoroScrollableTitle => throw UnimplementedError(),
      _ => throw Exception('[WidgetListingEnum.widgetViewWidget]: Unknown [widgetName] provided.'),
    };
  }

  bool get isAppBars => this == appBars;
  bool get isBodies => this == bodies;
  bool get isButtons => this == buttons;
  bool get isDividers => this == dividers;
  bool get isMaterialApps => this == materialApps;
  bool get isScreens => this == screens;
  bool get isScrollables => this == scrollables;
}
