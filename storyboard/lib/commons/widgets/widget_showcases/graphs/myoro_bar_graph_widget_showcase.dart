import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroBarGraph].
final class MyoroBarGraphWidgetShowcase extends StatelessWidget {
  const MyoroBarGraphWidgetShowcase({super.key});

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
    return MyoroBarGraph(
      items: List.generate(
        faker.randomGenerator.integer(10, min: 1),
        (_) => MyoroBarGraphGroup(
          x: faker.randomGenerator.integer(100),
          bars: List.generate(
            faker.randomGenerator.integer(5),
            (_) => MyoroBarGraphBar(
              y: faker.randomGenerator.decimal(),
              color: [
                Colors.red,
                Colors.green,
                Colors.blue,
                MyoroColorTheme.secondary(context),
              ][faker.randomGenerator.integer(4)],
            ),
          ),
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
