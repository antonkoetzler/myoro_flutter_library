part of '../myoro_resize_divider_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroResizeDividerWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(_) {
    return const Stack(
      children: [
        _Kitty(),
        Row(children: [_Cover(), _Divider()]),
      ],
    );
  }
}
