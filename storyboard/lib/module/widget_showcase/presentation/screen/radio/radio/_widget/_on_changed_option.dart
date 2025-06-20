part of '../myoro_radio_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.onChanged] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _OnChangedOption extends StatelessWidget {
  const _OnChangedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show snackbar when value is changed?',
        onChanged: (value) => viewModel.state.onChangedEnabled = value,
      ),
    );
  }
}
