part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.showClearTextButton] of [MyoroInputWidgetShowcaseScreen].
final class _CanShowClearTextButtonOption extends StatelessWidget {
  const _CanShowClearTextButtonOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Can show clear text button?', onChanged: (value) => state.canShowClearTextButton = value);
  }
}
