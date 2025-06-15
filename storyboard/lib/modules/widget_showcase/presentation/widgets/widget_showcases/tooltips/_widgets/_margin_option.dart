part of '../myoro_tooltip_widget_showcase.dart';

/// [MyoroTooltipConfiguration.margin] option of [MyoroTooltipWidgetShowcase].
final class _MarginOption extends StatelessWidget {
  const _MarginOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Margin.',
        paddingOnChanged: (margin) => viewModel.state.margin = margin,
        checkboxOnChanged: (enabled, margin) => viewModel.state.margin = enabled ? margin : null,
      ),
    );
  }
}
