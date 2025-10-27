part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.checkboxOnChanged] option of [MyoroInputWidgetShowcaseScreen].
final class _CheckboxOnChangedOption extends StatelessWidget {
  const _CheckboxOnChangedOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Enabled checkbox?', onChanged: (value) => state.checkboxOnChangedEnabled = value);
  }
}
