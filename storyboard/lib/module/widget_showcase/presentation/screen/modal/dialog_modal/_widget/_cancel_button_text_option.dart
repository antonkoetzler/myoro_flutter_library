part of '../myoro_dialog_modal_widget_showcase.dart';

/// [MyoroDialogModalConfiguration.cancelButtonText] option of [MyoroDialogModalWidgetShowcase].
final class _CancelButtonTextOption extends StatelessWidget {
  const _CancelButtonTextOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Cancel button text.',
        onChanged: (text) => viewModel.state.cancelButtonText = text,
      ),
    );
  }
}
