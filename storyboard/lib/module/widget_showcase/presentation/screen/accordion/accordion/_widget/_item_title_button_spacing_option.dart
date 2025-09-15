part of '../myoro_accordion_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonSpacing] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonSpacingOption extends StatelessWidget {
  const _ItemTitleButtonSpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Title button spacing',
        initiallyEnabled: viewModel.state.itemTitleButtonSpacing != null,
        initialValue: viewModel.state.itemTitleButtonSpacing ?? 10.0,
        sliderOnChanged: (value) => viewModel.state.itemTitleButtonSpacing = value,
        checkboxOnChanged:
            (enabled, value) => viewModel.state.itemTitleButtonSpacing = enabled ? value : null,
      ),
    );
  }
}
