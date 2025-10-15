part of '../widget_showcase_screen.dart';

/// A list widget for displaying options in the widget options modal.
final class _OptionsList extends StatelessWidget {
  const _OptionsList({required this.options});

  final List<Widget> options;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();
    final widgetOptionsModalSpacing = themeExtension.widgetOptionsModalSpacing;
    final widgetOptionsModalItemPadding = themeExtension.widgetOptionsModalItemPadding;
    return Column(
      spacing: widgetOptionsModalSpacing,
      children: options.map((o) => Padding(padding: widgetOptionsModalItemPadding, child: o)).toList(),
    );
  }
}
