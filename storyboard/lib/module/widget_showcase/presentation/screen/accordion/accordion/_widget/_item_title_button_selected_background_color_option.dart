part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonSelectedBackgroundColor] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonSelectedBackgroundColorOption extends StatelessWidget {
  const _ItemTitleButtonSelectedBackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Title button selected background color',
      enabled: viewModel.state.itemTitleButtonSelectedBackgroundColor != null,
      selectedColor: viewModel.state.itemTitleButtonSelectedBackgroundColor,
      onChanged: (color) => viewModel.state.itemTitleButtonSelectedBackgroundColor = color,
      checkboxOnChanged:
          (enabled, _) =>
              viewModel.state.itemTitleButtonSelectedBackgroundColor =
                  enabled ? null : viewModel.state.itemTitleButtonSelectedBackgroundColor,
    );
  }
}
