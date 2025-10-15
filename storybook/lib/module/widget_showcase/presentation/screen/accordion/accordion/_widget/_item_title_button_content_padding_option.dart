part of '../myoro_accordions_widget_showcase_screen.dart';

/// [MyoroAccordionThemeExtension.itemTitleButtonContentPadding] option of [MyoroAccordionWidgetShowcaseScreen].
final class _ItemTitleButtonContentPaddingOption extends StatelessWidget {
  const _ItemTitleButtonContentPaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final itemTitleButtonContentPadding = state.itemTitleButtonContentPadding;

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: 'Title button content padding',
        enabled: itemTitleButtonContentPadding != null,
        padding: itemTitleButtonContentPadding,
        paddingOnChanged: (p) => viewModel.state.itemTitleButtonContentPadding = p,
        checkboxOnChanged: (e, p) => state.itemTitleButtonContentPadding = e ? itemTitleButtonContentPadding : null,
      ),
    );
  }
}
