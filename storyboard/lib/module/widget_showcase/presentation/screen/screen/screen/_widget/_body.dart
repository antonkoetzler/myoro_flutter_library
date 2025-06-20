part of '../myoro_screen_widget_showcase_screen.dart';

/// [MyoroScreenConfiguration.body] of [_Widget].
final class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return Center(
      child: Text('This is the body of a MyoroScreen!', style: widgetShowcaseOptionThemeExtension.labelTextStyle),
    );
  }
}
