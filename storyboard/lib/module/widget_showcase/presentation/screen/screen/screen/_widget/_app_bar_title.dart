part of '../myoro_screen_widget_showcase_screen.dart';

/// Title in [_AppBar].
final class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    return Text(faker.lorem.word(), style: widgetShowcaseThemeExtension.labelTextStyle);
  }
}
