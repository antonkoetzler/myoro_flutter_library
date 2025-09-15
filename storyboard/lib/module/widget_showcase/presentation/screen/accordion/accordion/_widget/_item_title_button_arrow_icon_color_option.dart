part of '../myoro_accordion_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonArrowIconColor] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonArrowIconColorOption extends StatelessWidget {
  const _ItemTitleButtonArrowIconColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Arrow icon color',
      selectedColor: viewModel.state.itemTitleButtonArrowIconColor,
      onChanged: (color) => viewModel.state.itemTitleButtonArrowIconColor = color,
      checkboxOnChanged:
          (enabled, _) =>
              viewModel.state.itemTitleButtonArrowIconColor =
                  enabled ? null : viewModel.state.itemTitleButtonArrowIconColor,
    );
  }
}
