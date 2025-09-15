part of '../myoro_accordion_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonContentPadding] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonContentPaddingOption extends StatelessWidget {
  const _ItemTitleButtonContentPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Title button content padding',
        paddingOnChanged: (padding) => viewModel.state.itemTitleButtonContentPadding = padding,
      ),
    );
  }
}
