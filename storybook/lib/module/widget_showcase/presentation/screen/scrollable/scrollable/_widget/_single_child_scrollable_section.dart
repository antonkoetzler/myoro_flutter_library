part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Single child scrollable section.
final class _SingleChildScrollableSection extends StatelessWidget {
  const _SingleChildScrollableSection();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final singleChildConfiguration = viewModel.singleChildConfiguration;
    final style = viewModel.style;

    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;
    final labelTextStyle = widgetShowcaseThemeExtension.labelTextStyle;

    final scrollablesWidgetShowcaseThemeExtension =
        context.resolveThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension>();
    final scrollableConstraints = scrollablesWidgetShowcaseThemeExtension.scrollableConstraints;

    return Column(
      spacing: spacing,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('MyoroSingleChildScrollable', style: labelTextStyle),
        ConstrainedBox(
          constraints: scrollableConstraints,
          child: MyoroSingleChildScrollable(
            configuration: singleChildConfiguration,
            style: style,
            child: Column(
              spacing: spacing,
              children: List.generate(20, (index) => _Button('Single Child Item $index')),
            ),
          ),
        ),
      ],
    );
  }
}
