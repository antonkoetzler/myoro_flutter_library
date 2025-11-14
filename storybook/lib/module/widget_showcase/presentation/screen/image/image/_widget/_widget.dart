part of '../myoro_image_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroImageWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: [
        MyoroImage(path: kHappyCat, width: 200, height: 200),
        MyoroImage(path: kAreYouSillyCat, width: 200, height: 200),
        MyoroImage(path: kSnazzyCat, width: 200, height: 200),
      ],
    );
  }
}

