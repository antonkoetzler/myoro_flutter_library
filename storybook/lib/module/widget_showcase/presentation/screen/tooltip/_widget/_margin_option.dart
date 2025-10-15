part of '../myoro_tooltip_widget_showcase_screen.dart';

/// [MyoroTooltipConfiguration.margin] option of [MyoroTooltipWidgetShowcaseScreen].
final class _MarginOption extends StatelessWidget {
  const _MarginOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTooltipWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Margin.',
        paddingOnChanged: (margin) => viewModel.state.margin = margin,
        checkboxOnChanged: (enabled, margin) => viewModel.state.margin = enabled ? margin : null,
      ),
    );
  }
}
