part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.onChanged] option of [MyoroInputWidgetShowcaseScreen].
final class _OnChangedOption extends StatelessWidget {
  const _OnChangedOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Callback when text is changed?', onChanged: (value) => state.onChangedEnabled = value);
  }
}
