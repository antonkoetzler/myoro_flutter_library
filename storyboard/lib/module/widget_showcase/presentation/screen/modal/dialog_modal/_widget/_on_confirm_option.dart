part of '../myoro_dialog_modal_widget_showcase.dart';

/// [MyoroDialogModalConfiguration.onConfirm] option of [MyoroDialogModalWidgetShowcase].
final class _OnConfirmOption extends StatelessWidget {
  const _OnConfirmOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show snackbar when confirm button is pressed?',
        onChanged: (value) => viewModel.state.onConfirmEnabled = value,
      ),
    );
  }
}
