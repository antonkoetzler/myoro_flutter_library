part of '../myoro_scrollables_widget_showcase_screen.dart';

/// List scrollable section.
final class _ListScrollableSection extends StatelessWidget {
  const _ListScrollableSection();

  @override
  Widget build(BuildContext context) {
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
        Text('MyoroListScrollable', style: labelTextStyle),
        ConstrainedBox(
          constraints: scrollableConstraints,
          child: MyoroListScrollable(
            children: List.generate(
              20,
              (index) => Padding(padding: EdgeInsets.only(bottom: spacing), child: _Button('List Item $index')),
            ),
          ),
        ),
      ],
    );
  }
}
