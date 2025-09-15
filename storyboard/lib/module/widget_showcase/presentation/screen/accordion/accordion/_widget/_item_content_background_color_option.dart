part of '../myoro_accordion_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemContentBackgroundColor] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemContentBackgroundColorOption extends StatelessWidget {
  const _ItemContentBackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Item content background color',
      selectedColor: viewModel.state.itemContentBackgroundColor,
      onChanged: (color) => viewModel.state.itemContentBackgroundColor = color,
      checkboxOnChanged:
          (enabled, _) =>
              viewModel.state.itemContentBackgroundColor =
                  enabled ? null : viewModel.state.itemContentBackgroundColor,
    );
  }
}
