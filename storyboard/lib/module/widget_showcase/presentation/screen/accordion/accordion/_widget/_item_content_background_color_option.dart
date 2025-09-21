part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemContentBackgroundColor] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemContentBackgroundColorOption extends StatelessWidget {
  const _ItemContentBackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final itemContentBackgroundColor = state.itemContentBackgroundColor;

    return ColorWidgetShowcaseOption(
      label: 'Item content background color',
      selectedColor: itemContentBackgroundColor,
      onChanged: (color) => state.itemContentBackgroundColor = color,
    );
  }
}
