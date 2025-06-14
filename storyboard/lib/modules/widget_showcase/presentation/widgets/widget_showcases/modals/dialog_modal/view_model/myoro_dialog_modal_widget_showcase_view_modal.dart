import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dialog_modal_widget_showcase_state.dart';

/// View model of [MyoroDialogModalWidgetShowcase].
final class MyoroDialogModalWidgetShowcaseViewModel {
  /// State
  final _state = MyoroDialogModalWidgetShowcaseState();
  MyoroDialogModalWidgetShowcaseState get state => _state;

  /// Function that displays the [MyoroDialogModal].
  void showModal(BuildContext context) {
    MyoroDialogModal.show(
      context,
      modalConfiguration: _state.modalViewModel.configuration(context),
      dialogModalConfiguration: configuration(context),
    );
  }

  /// [MyoroDialogModalConfiguration] of the [MyoroDialogModal].
  MyoroDialogModalConfiguration configuration(BuildContext context) {
    return MyoroDialogModalConfiguration(
      invertButtons: state.invertButtons,
      confirmButtonText: state.confirmButtonText,
      cancelButtonText: state.cancelButtonText,
      onConfirm: state.onConfirmEnabled ? () => _onConfirm(context) : null,
      onCancel: state.onConfirmEnabled ? () => _onCancel(context) : null,
      text: state.text,
      textStyle: state.textStyle,
      child: state.child,
    );
  }

  /// [MyoroDialogModalConfiguration.onConfirm]
  void _onConfirm(BuildContext context) {
    _showSnackBar(context, 'Confirm button tapped!');
  }

  /// [MyoroDialogModalConfiguration.onCancel]
  void _onCancel(BuildContext context) {
    _showSnackBar(context, 'Cancel button tapped!');
  }

  /// Generic function to show a snackbar.
  void _showSnackBar(BuildContext context, String message) {
    context.showSnackBar(snackBar: MyoroSnackBar(configuration: MyoroSnackBarConfiguration(message: message)));
  }
}
