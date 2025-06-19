part of '../myoro_dialog_modal_widget_showcase.dart';

/// [MyoroDialogModalConfiguration.invertButtons] option of [MyoroDialogModalWidgetShowcase].
final class _InvertButtonsOption extends StatelessWidget {
  const _InvertButtonsOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Invert buttons?',
        onChanged: (value) => viewModel.state.invertButtons = value,
      ),
    );
  }
}
