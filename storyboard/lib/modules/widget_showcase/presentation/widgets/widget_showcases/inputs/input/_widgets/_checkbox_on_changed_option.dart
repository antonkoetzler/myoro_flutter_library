part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.checkboxOnChanged] option of [MyoroInputWidgetShowcase].
final class _CheckboxOnChangedOption extends StatelessWidget {
  const _CheckboxOnChangedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Enabled checkbox?',
        onChanged: (value) => viewModel.state.checkboxOnChangedEnabled = value,
      ),
    );
  }
}
