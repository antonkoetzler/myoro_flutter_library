import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroTable].
final class MyoroTableWidgetShowcase extends StatelessWidget {
  const MyoroTableWidgetShowcase({super.key});

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
    return MyoroTable<String>(
      dataConfiguration: MyoroDataConfiguration(
        staticItems: List.generate(
          faker.randomGenerator.integer(50),
          (_) => faker.randomGenerator.string(50),
        ),
      ),
      columns: List.generate(
        4,
        (_) => MyoroTableColumn.fake().copyWith(
          child: Text(
            faker.randomGenerator.string(10),
          ),
        ),
      ),
      rowBuilder: (_) => MyoroTableRow.fake().copyWith(
        cells: [
          MyoroTableCell.fake(),
          MyoroTableCell.fake(),
          MyoroTableCell.fake(),
          MyoroTableCell.fake(),
        ],
      ),
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) => const Text('TODO'); // TODO
}