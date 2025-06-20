import 'package:flutter/widgets.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroAccordion].
class MyoroAccordionViewModel {
  MyoroAccordionViewModel(MyoroAccordionController controller) : state = MyoroAccordionState(controller);

  /// State
  final MyoroAccordionState state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder] of a [MyoroAccordionItem]'s [Widget].
  Color itemTitleButtonBackgroundColorBuilder(MyoroButtonThemeExtension buttonThemeExtension) {
    return buttonThemeExtension.primaryIdleBackgroundColor;
  }

  /// [MyoroButtonConfiguration.onTapUp] of a [MyoroAccordionItem].
  void itemTitleButtonOnTapUp(MyoroAccordionItem item) {
    final controller = state.controller;
    controller.expandedItem != item ? controller.expandItem(item) : controller.reset();
  }
}
