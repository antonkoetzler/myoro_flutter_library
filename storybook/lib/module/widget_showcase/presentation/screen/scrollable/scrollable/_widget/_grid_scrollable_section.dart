part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Grid scrollable section.
final class _GridScrollableSection extends StatelessWidget {
  const _GridScrollableSection();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final gridConfiguration = viewModel.gridConfiguration;
    final style = viewModel.style;

    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;
    final labelTextStyle = widgetShowcaseThemeExtension.labelTextStyle;

    final scrollablesWidgetShowcaseScreenThemeExtension = context
        .resolveThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension>();
    final scrollableConstraints = scrollablesWidgetShowcaseScreenThemeExtension.scrollableConstraints;

    return Column(
      spacing: spacing,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('MyoroGridScrollable', style: labelTextStyle),
        ConstrainedBox(
          constraints: scrollableConstraints,
          child: MyoroGridScrollable(
            configuration: gridConfiguration,
            style: style,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            children: List.generate(20, (index) => _Button('Grid ${index + 1}')),
          ),
        ),
      ],
    );
  }
}
