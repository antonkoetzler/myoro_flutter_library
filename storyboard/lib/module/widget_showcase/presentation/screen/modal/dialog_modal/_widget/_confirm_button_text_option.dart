part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.confirmButtonText] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _ConfirmButtonTextOption extends StatelessWidget {
  const _ConfirmButtonTextOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Confirm button text',
        onChanged: (text) => viewModel.state.confirmButtonText = text,
      ),
    );
  }
}
