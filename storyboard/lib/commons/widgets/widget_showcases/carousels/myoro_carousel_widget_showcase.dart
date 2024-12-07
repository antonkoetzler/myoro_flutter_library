import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroCarousel].
final class MyoroCarouselWidgetShowcase extends StatelessWidget {
  const MyoroCarouselWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(
      widget: _Widget(),
      widgetOptions: _WidgetOptions(),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroCarousel(
      autoplay: true,
      items: [
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
      ],
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) => const Text('TODO'); // TODO
}
