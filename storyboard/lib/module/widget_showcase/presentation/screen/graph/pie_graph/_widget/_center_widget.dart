part of '../myoro_pie_graph_widget_showcase_screen.dart';

/// [MyoroPieGraphConfiguration.centerWidget] of [_Widget].
final class _CenterWidget extends StatelessWidget {
  const _CenterWidget();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroPieGraphWidgetShowcaseScreenThemeExtension>();

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: themeExtension.centerWidgetBorderRadius,
      child: Image.asset(kAreYouSillyCat, width: themeExtension.centerWidgetSize, fit: BoxFit.contain),
    );
  }
}
