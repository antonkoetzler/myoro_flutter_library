part of '../myoro_radio_widget_showcase_screen.dart';

/// [MyoroDialogModalConfiguration.onChanged] option of [MyoroDialogModalWidgetShowcaseScreen].
final class _OnChangedOption extends StatelessWidget {
  const _OnChangedOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroRadioWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: 'Show snackbar when value is changed?',
      onChanged: (value) => state.onChangedEnabled = value,
    );
  }
}
