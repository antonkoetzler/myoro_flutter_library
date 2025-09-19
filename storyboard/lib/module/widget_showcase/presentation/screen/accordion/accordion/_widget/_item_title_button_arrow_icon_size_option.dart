part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonArrowIconSize] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonArrowIconSizeOption extends StatelessWidget {
  const _ItemTitleButtonArrowIconSizeOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Arrow icon size',
        enabled: viewModel.state.itemTitleButtonArrowIconSize != null,
        value: viewModel.state.itemTitleButtonArrowIconSize ?? 25.0,
        sliderOnChanged: (value) => viewModel.state.itemTitleButtonArrowIconSize = value,
        checkboxOnChanged: (enabled, value) => viewModel.state.itemTitleButtonArrowIconSize = enabled ? value : null,
      ),
    );
  }
}
