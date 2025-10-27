part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.showClearTextButton] of [MyoroInputWidgetShowcaseScreen].
final class _ShowClearTextButtonOption extends StatelessWidget {
  const _ShowClearTextButtonOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Show clear text button?', onChanged: (value) => state.showClearTextButton = value);
  }
}
