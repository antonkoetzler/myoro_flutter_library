part of '../myoro_tooltip_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTooltipWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return const MyoroTooltip(configuration: MyoroTooltipConfiguration(), child: SizedBox.shrink());
  }
}
