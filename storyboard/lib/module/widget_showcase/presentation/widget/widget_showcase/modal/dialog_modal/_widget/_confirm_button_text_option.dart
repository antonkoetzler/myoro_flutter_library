part of '../myoro_dialog_modal_widget_showcase.dart';

/// [MyoroDialogModalConfiguration.confirmButtonText] option of [MyoroDialogModalWidgetShowcase].
final class _ConfirmButtonTextOption extends StatelessWidget {
  const _ConfirmButtonTextOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Confirm button text',
        onChanged: (text) => viewModel.state.confirmButtonText = text,
      ),
    );
  }
}
