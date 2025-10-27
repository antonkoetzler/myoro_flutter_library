import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroDrawerWidgetShowcaseScreen].
final class MyoroDrawerWidgetShowcaseScreenViewModel {
  /// [MyoroDrawer.title]
  String title = MyoroDrawer.titleDefaultValue;

  /// [MyoroDrawer.titleTextStyle]
  TextStyle? titleTextStyle;

  /// [MyoroDrawer.showCloseButton]
  bool showCloseButton = MyoroDrawer.showCloseButtonDefaultValue;

  /// [MyoroDrawer.barrierDismissable]
  bool barrierDismissable = MyoroDrawer.barrierDismissableDefaultValue;

  /// [bool] controlling if the drawer is going to be displayed on the left or right side.
  bool isEndDrawer = false;

  /// [MyoroDrawerThemeExtension.closeButtonContentPadding]
  EdgeInsets? closeButtonContentPadding;

  /// Opens the drawer.
  void showDrawer(BuildContext context) {
    context.openDrawer(
      isEndDrawer: isEndDrawer,
      drawer: MyoroDrawer(
        style: MyoroDrawerStyle(closeButtonContentPadding: closeButtonContentPadding),
        title: title,
        showCloseButton: showCloseButton,
        barrierDismissable: barrierDismissable,
        child: const SizedBox.shrink(),
      ),
    );
  }
}
