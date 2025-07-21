part of '../myoro_dialog_modal_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.invertButtons] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _InvertButtonsOption extends StatelessWidget {
  const _InvertButtonsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDialogModalWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Invert buttons?',
        onChanged: (value) => viewModel.state.invertButtons = value,
      ),
    );
  }
}
