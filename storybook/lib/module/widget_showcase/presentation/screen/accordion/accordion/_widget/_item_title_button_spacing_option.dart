part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonSpacing] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonSpacingOption extends StatelessWidget {
  const _ItemTitleButtonSpacingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final itemTitleButtonSpacing = state.itemTitleButtonSpacing;

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Title button spacing',
        enabled: itemTitleButtonSpacing != null,
        value: itemTitleButtonSpacing ?? SliderWidgetShowcaseOptionConfiguration.valueDefaultValue,
        sliderOnChanged: (value) => state.itemTitleButtonSpacing = value,
        checkboxOnChanged: (enabled, value) => state.itemTitleButtonSpacing = enabled ? value : null,
      ),
    );
  }
}
