part of '../widget_showcase_screen.dart';

/// A list widget for displaying options in the widget options modal.
final class _OptionsList extends StatelessWidget {
  const _OptionsList({required this.options});

  final List<Widget> options;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();
    final List<Widget> widgets = [];

    for (int i = 0; i < options.length; i++) {
      widgets.add(Padding(padding: themeExtension.widgetOptionsModalItemPadding, child: options[i]));

      // Add spacing between options (except for the last one)
      if (i < options.length - 1) {
        widgets.add(SizedBox(height: themeExtension.widgetOptionsModalSpacing / 2));
      }
    }

    return Column(children: widgets);
  }
}
