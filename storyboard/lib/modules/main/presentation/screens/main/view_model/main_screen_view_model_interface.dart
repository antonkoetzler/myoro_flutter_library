import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Interface of [MainScreenViewModel].
abstract interface class MainScreenViewModelInterface {
  /// [MyoroButtonConfiguration.onTapUp] of [_WidgetListingAccordionItemContentButton].
  void widgetListingAccordionItemContentButtonOnTapUp(BuildContext context, String widgetName);
}
