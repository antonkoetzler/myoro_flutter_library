import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroDialogModalWidgetShowcaseScreen].
final class MyoroDialogModalWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroDialogModalWidgetShowcaseScreenState();
  MyoroDialogModalWidgetShowcaseScreenState get state => _state;

  /// Function that displays the [MyoroDialogModal].
  void showModal(BuildContext context) {
    final modalState = _state.modalViewModel.state;

    MyoroDialogModal.show(
      context,
      isBottomSheet: modalState.isBottomSheet,
      barrierDismissable: modalState.barrierDismissable,
      useRootNavigator: modalState.useRootNavigator,
      title: modalState.title,
      showCloseButton: modalState.showCloseButton,
      invertButtons: state.invertButtons,
      confirmButtonText: state.confirmButtonText,
      cancelButtonText: state.cancelButtonText,
      onConfirm: state.onConfirmEnabled ? () => _onConfirm(context) : null,
      onCancel: state.onConfirmEnabled ? () => _onCancel(context) : null,
      text: state.text,
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
    context.showSnackBar(snackBar: MyoroSnackBar(message: message));
  }
}
