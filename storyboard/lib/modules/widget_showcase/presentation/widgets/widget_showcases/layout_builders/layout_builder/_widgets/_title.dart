part of '../myoro_layout_builder_widget_showcase.dart';

/// Title of [MyoroLayoutBuilderWidgetShowcase].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return Text(
      'Constraints of the [MyoroLayoutBuilder]. Resize the window to update it\'s values.',
      style: widgetShowcaseOptionThemeExtension.labelTextStyle,
    );
  }
}
