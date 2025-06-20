part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.checkboxOnChanged] option of [MyoroInputWidgetShowcaseScreen].
final class _CheckboxOnChangedOption extends StatelessWidget {
  const _CheckboxOnChangedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Enabled checkbox?',
        onChanged: (value) => viewModel.state.checkboxOnChangedEnabled = value,
      ),
    );
  }
}
