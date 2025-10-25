part of '../myoro_accordions_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroAccordionWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAccordionsWidgetShowcaseScreenViewModel>();
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;
    final buildTitleOrContentWidget = viewModel.buildTitleOrContentWidget;
    final state = viewModel.state;
    final thumbVisibility = state.thumbVisibility;
    final items = viewModel.items;
    final style = viewModel.style;

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, _) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: spacing,
          children: [
            Flexible(
              child: MyoroSingleAccordion(
                style: style,
                thumbVisibility: thumbVisibility,
                titleBuilder: buildTitleOrContentWidget,
                contentBuilder: buildTitleOrContentWidget,
                items: items,
              ),
            ),
            Flexible(
              child: MyoroMultiAccordion(
                style: style,
                thumbVisibility: thumbVisibility,
                titleBuilder: buildTitleOrContentWidget,
                contentBuilder: buildTitleOrContentWidget,
                items: items,
              ),
            ),
          ],
        );
      },
    );
  }
}
