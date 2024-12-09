import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroPieGraph].
final class MyoroPieGraphWidgetShowcase extends StatelessWidget {
  const MyoroPieGraphWidgetShowcase({super.key});

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
    return MyoroPieGraph(
      MyoroPieGraphEnum.donut,
      centerWidget: const Text('Hello, World!'),
      items: List.generate(
        faker.randomGenerator.integer(10),
        (_) => MyoroPieGraphItem(
          value: faker.randomGenerator.decimal(),
          radius: faker.randomGenerator.integer(100).toDouble(),
          color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        ),
      ),
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) => const Text('TODO'); // TODO
}
