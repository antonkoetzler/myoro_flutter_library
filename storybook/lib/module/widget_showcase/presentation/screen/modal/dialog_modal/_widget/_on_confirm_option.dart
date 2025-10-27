part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.onConfirm] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _OnConfirmOption extends StatelessWidget {
  const _OnConfirmOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: 'Show snackbar when confirm button is pressed?',
      onChanged: (value) => state.onConfirmEnabled = value,
    );
  }
}
