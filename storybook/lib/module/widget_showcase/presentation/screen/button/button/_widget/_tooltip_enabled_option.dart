part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.tooltipConfiguration] option of [MyoroButtonWidgetShowcaseScreen].
final class _TooltipEnabledOption extends StatelessWidget {
  const _TooltipEnabledOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final tooltipEnabled = state.tooltipEnabled;
    return MyoroCheckbox(
      label: 'Tooltip enabled?',
      value: tooltipEnabled,
      onChanged: (value) => state.tooltipEnabled = value,
    );
  }
}
