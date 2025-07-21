part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.tooltipConfiguration] option of [MyoroButtonWidgetShowcaseScreen].
final class _TooltipEnabledOption extends StatelessWidget {
  const _TooltipEnabledOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Tooltip enabled?',
        value: viewModel.state.tooltipEnabled,
        onChanged: (value) => viewModel.state.tooltipEnabled = value,
      ),
    );
  }
}
