part of '../myoro_group_radio_widget_showcase_screen.dart';

/// [MyoroGroupRadioConfiguration.onChanged] option of [MyoroGroupRadioWidgetShowcaseScreen].
final class _OnChangedOption extends StatelessWidget {
  const _OnChangedOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: 'Show snack bar when a value is changed?',
      onChanged: (value) => state.onChangedEnabled = value,
    );
  }
}
