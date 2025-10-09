part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Sliver scrollable section.
final class _SliverScrollableSection extends StatelessWidget {
  const _SliverScrollableSection();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final sliverConfiguration = viewModel.sliverConfiguration;
    final style = viewModel.style;

    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;
    final labelTextStyle = widgetShowcaseThemeExtension.labelTextStyle;

    final scrollablesWidgetShowcaseScreenThemeExtension =
        context.resolveThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension>();
    final scrollableConstraints = scrollablesWidgetShowcaseScreenThemeExtension.scrollableConstraints;

    return Column(
      spacing: spacing,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('MyoroSliverScrollable', style: labelTextStyle),
        ConstrainedBox(
          constraints: scrollableConstraints,
          child: MyoroSliverScrollable(
            configuration: sliverConfiguration,
            style: style,
            slivers: [
              const SliverToBoxAdapter(child: MyoroAppBar(child: Text('Sliver App Bar'))),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: EdgeInsets.only(top: index == 0 ? spacing : 0, bottom: spacing),
                    child: _Button('Sliver Item ${index + 1}'),
                  ),
                  childCount: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
