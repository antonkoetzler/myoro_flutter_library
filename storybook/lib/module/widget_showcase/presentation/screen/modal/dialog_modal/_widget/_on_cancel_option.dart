part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.onCancel] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _OnCancelOption extends StatelessWidget {
  const _OnCancelOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: 'Show snackbar when cancel button is pressed?',
      onChanged: (value) => state.onCancelEnabled = value,
    );
  }
}
