part of '../myoro_button_widget_showcase.dart';

/// [MyoroButtonConfiguration.tooltipConfiguration] option of [MyoroButtonWidgetShowcase].
final class _TooltipEnabledOption extends StatelessWidget {
  const _TooltipEnabledOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Tooltip enabled?',
        value: viewModel.tooltipEnabled,
        onChanged: (value) => viewModel.tooltipEnabled = value,
      ),
    );
  }
}
