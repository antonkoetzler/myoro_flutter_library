part of '../myoro_accordion_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonArrowIconSize] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonArrowIconSizeOption extends StatelessWidget {
  const _ItemTitleButtonArrowIconSizeOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Arrow icon size',
        initiallyEnabled: viewModel.state.itemTitleButtonArrowIconSize != null,
        initialValue: viewModel.state.itemTitleButtonArrowIconSize ?? 25.0,
        sliderOnChanged: (value) => viewModel.state.itemTitleButtonArrowIconSize = value,
        checkboxOnChanged:
            (enabled, value) =>
                viewModel.state.itemTitleButtonArrowIconSize = enabled ? value : null,
      ),
    );
  }
}
