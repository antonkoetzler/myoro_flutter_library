part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonTitleTextStyle] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonTitleTextStyleOption extends StatelessWidget {
  const _ItemTitleButtonTitleTextStyleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();

    return TextStyleWidgetShowcaseOption(
      label: 'Title text style',
      selectedItem: viewModel.state.itemTitleButtonTitleTextStyle,
      onChanged: (textStyle) => viewModel.state.itemTitleButtonTitleTextStyle = textStyle,
      checkboxOnChanged:
          (enabled, _) =>
              viewModel.state.itemTitleButtonTitleTextStyle =
                  enabled ? null : viewModel.state.itemTitleButtonTitleTextStyle,
    );
  }
}
