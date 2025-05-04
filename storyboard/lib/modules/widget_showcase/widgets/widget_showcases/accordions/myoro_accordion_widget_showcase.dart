import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] of [MyoroAccordion].
final class MyoroAccordionWidgetShowcase extends StatelessWidget {
  const MyoroAccordionWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(widget: _Widget());
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroAccordion(
      configuration: MyoroAccordionConfiguration(
        items: List.generate(
          faker.randomGenerator.integer(10, min: 1),
          (_) => MyoroAccordionItem(
            titleBuilder: (_) {
              return Text(faker.lorem.word());
            },
            contentBuilder: (_) {
              return const Text(
                'This is where the content of the accordion goes',
              );
            },
          ),
        ),
      ),
    );
  }
}
