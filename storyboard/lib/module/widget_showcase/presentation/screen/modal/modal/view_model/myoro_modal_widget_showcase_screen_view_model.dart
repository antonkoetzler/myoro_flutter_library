import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroModalWidgetShowcaseScreen].
final class MyoroModalWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroModalWidgetShowcaseScreenState();
  MyoroModalWidgetShowcaseScreenState get state => _state;

  /// Opens the [MyoroModal].
  void showModal(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalWidgetShowcaseScreenThemeExtension>();

    !state.isBottomSheet
        ? MyoroModal.showModal(
          context,
          configuration: configuration(context),
          child: Image.asset(kHappyCat, width: themeExtension.modalContentImageSize, fit: BoxFit.contain),
        )
        : MyoroModal.showBottomSheet(
          context,
          configuration: configuration(context),
          child: Image.asset(kHappyCat, width: themeExtension.modalContentImageSize, fit: BoxFit.contain),
        );
  }

  /// [MyoroModalConfiguration] of the [MyoroModal].
  MyoroModalConfiguration configuration(BuildContext context) {
    return MyoroModalConfiguration(
      barrierDismissable: _state.barrierDismissable,
      useRootNavigator: _state.useRootNavigator,
      constraints: _state.constraints,
      onClosed: _state.onClosedEnabled ? (_) => onClosed(context) : null,
      title: _state.title,
      showCloseButton: _state.showCloseButton,
      padding: _state.padding,
      closeButtonPadding: _state.closeButtonPadding,
    );
  }

  // [MyoroModalConfiguration.onClosed]
  void onClosed(BuildContext context) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: '${!_state.isBottomSheet ? 'Modal' : 'Bottom sheet'} closed!',
        ),
      ),
    );
  }
}
