part of '../myoro_dialog_modal_widget_showcase.dart';

/// [MyoroDialogModalConfiguration.text] option of [MyoroDialogModalWidgetShowcase].
final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseViewModel>();

    return MyoroInput(
      configuration: MyoroInputConfiguration(
        label: 'Dialog message.',
        onChanged: (text) => viewModel.state.text = text,
      ),
    );
  }
}
