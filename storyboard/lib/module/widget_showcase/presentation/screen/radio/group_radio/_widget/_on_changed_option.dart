part of '../myoro_group_radio_widget_showcase_screen.dart';

/// [MyoroGroupRadioConfiguration.onChanged] option of [MyoroGroupRadioWidgetShowcaseScreen].
final class _OnChangedOption extends StatelessWidget {
  const _OnChangedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroGroupRadioWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show snack bar when a value is changed?',
        onChanged: (value) => viewModel.state.onChangedEnabled = value,
      ),
    );
  }
}
