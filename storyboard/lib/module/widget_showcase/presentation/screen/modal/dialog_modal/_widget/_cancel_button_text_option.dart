part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.cancelButtonText] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _CancelButtonTextOption extends StatelessWidget {
  const _CancelButtonTextOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Cancel button text.',
        onChanged: (text) => viewModel.state.cancelButtonText = text,
      ),
    );
  }
}
