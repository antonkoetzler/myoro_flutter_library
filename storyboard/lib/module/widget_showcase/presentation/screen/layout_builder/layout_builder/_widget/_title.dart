part of '../myoro_layout_builder_widget_showcase_screen.dart';

/// Title of [MyoroLayoutBuilderWidgetShowcase].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Text(
      'Constraints of the [MyoroLayoutBuilder]. Resize the window to update it\'s values.',
      style: widgetShowcaseThemeExtension.labelTextStyle,
    );
  }
}
