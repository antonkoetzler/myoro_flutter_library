import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroSingularDropdown].
///
/// TODO: Finish this.
final class MyoroSingularDropdownWidgetShowcase extends StatelessWidget {
  const MyoroSingularDropdownWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(
      widget: _Widget(),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  MyoroMenuItem _itemBuilder(String text) => MyoroMenuItem(text: text);
  String _itemLabelBuilder(String text) => text;

  @override
  Widget build(BuildContext cotnext) {
    final configuration = MyoroDropdownConfiguration<String>(
      dataConfiguration: MyoroDataConfiguration(
        staticItems: List.generate(
          faker.randomGenerator.integer(50),
          (_) => faker.lorem.word(),
        ),
      ),
      itemBuilder: _itemBuilder,
      itemLabelBuilder: _itemLabelBuilder,
    );

    return MyoroSingularDropdown<String>(configuration: configuration);
  }
}
