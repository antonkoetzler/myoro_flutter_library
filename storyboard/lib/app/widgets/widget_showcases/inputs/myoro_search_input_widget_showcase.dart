import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroSearchInput].
final class MyoroSearchInputWidgetShowcase extends StatelessWidget {
  const MyoroSearchInputWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(
      widget: _Widget(),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return MyoroSearchInput<String>(
      configuration: const MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
      ),
      request: (_) async {
        await Future.delayed(const Duration(milliseconds: 300));
        return List.generate(
          faker.randomGenerator.integer(50),
          (_) => faker.randomGenerator.string(150),
        );
      },
      itemBuilder: (String item) => MyoroMenuItem(
        text: item,
        onPressed: () {},
      ),
    );
  }
}
