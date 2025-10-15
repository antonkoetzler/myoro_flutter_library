import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroDrawerWidgetShowcaseScreen].
final class MyoroDrawerWidgetShowcaseScreenViewModel {
  /// [MyoroDrawerConfiguration.title]
  String title = MyoroDrawerConfiguration.titleDefaultValue;

  /// [MyoroDrawerConfiguration.titleTextStyle]
  TextStyle? titleTextStyle;

  /// [MyoroDrawerConfiguration.showCloseButton]
  bool showCloseButton = MyoroDrawerConfiguration.showCloseButtonDefaultValue;

  /// [MyoroDrawerConfiguration.barrierDismissable]
  bool barrierDismissable = MyoroDrawerConfiguration.barrierDismissableDefaultValue;

  /// [bool] controlling if the drawer is going to be displayed on the left or right side.
  bool isEndDrawer = false;

  /// [MyoroDrawerThemeExtension.closeButtonContentPadding]
  EdgeInsets? closeButtonContentPadding;

  /// Opens the drawer.
  void showDrawer(BuildContext context) {
    context.openDrawer(
      isEndDrawer: isEndDrawer,
      drawer: MyoroDrawer(
        configuration: MyoroDrawerConfiguration(
          title: title,
          showCloseButton: showCloseButton,
          barrierDismissable: barrierDismissable,
          child: const SizedBox.shrink(),
        ),
        style: MyoroDrawerStyle(closeButtonContentPadding: closeButtonContentPadding),
      ),
    );
  }
}
