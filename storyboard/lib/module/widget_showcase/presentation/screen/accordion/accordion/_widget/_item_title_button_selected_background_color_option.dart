part of '../myoro_accordion_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonSelectedBackgroundColor] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonSelectedBackgroundColorOption extends StatelessWidget {
  const _ItemTitleButtonSelectedBackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Title button selected background color',
      selectedColor: viewModel.state.itemTitleButtonSelectedBackgroundColor,
      onChanged: (color) => viewModel.state.itemTitleButtonSelectedBackgroundColor = color,
      checkboxOnChanged:
          (enabled, _) =>
              viewModel.state.itemTitleButtonSelectedBackgroundColor =
                  enabled ? null : viewModel.state.itemTitleButtonSelectedBackgroundColor,
    );
  }
}
