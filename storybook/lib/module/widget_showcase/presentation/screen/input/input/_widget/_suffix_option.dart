part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.suffix] option of [MyoroInputWidgetShowcaseScreen].
final class _SuffixOption extends StatelessWidget {
  const _SuffixOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Enable suffix?', onChanged: (value) => state.suffixEnabled = value);
  }
}
