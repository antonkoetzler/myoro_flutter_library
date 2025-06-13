import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_modal_widget_showcase_state.dart';

/// View model of [MyoroModalWidgetShowcase].
final class MyoroModalWidgetShowcaseViewModel {
  /// State
  final state = MyoroModalWidgetShowcaseState();

  /// Opens the [MyoroModal].
  void showModal(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalWidgetShowcaseThemeExtension>();

    MyoroModal.show(
      context,
      configuration: _configuration(context),
      child: Image.asset(kHappyCat, width: themeExtension.modalContentImageSize, fit: BoxFit.contain),
    );
  }

  /// [MyoroModalConfiguration] of the [MyoroModal].
  MyoroModalConfiguration _configuration(BuildContext context) {
    // [MyoroModalConfiguration.onClosed]
    void onClosed(BuildContext context) {
      context.showSnackBar(
        snackBar: const MyoroSnackBar(
          configuration: MyoroSnackBarConfiguration(
            snackBarType: MyoroSnackBarTypeEnum.attention,
            message: 'Modal closed!',
          ),
        ),
      );
    }

    return MyoroModalConfiguration(
      barrierDismissable: state.barrierDismissable,
      useRootNavigator: state.useRootNavigator,
      constraints: state.constraints,
      onClosed: state.onClosedEnabled ? () => onClosed(context) : null,
      title: state.title,
      showCloseButton: state.showCloseButton,
      padding: state.padding,
      closeButtonPadding: state.closeButtonPadding,
    );
  }
}
