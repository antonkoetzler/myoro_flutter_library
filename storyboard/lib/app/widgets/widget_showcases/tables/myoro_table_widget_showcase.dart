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
    final list = List.generate(
      faker.randomGenerator.integer(50),
      (_) => faker.randomGenerator.string(50),
    );
    final columns = List.generate(
      4,
      (_) => MyoroTableColumn.fake().copyWith(
        widthConfiguration: const MyoroTableColumnWidth.expanding(),
        title: faker.randomGenerator.string(10),
        titleTextAlign: TextAlign.center,
        ordenationCallback: (_) => print('Start'),
        ordenationFilter: faker.randomGenerator.string(10),
      ),
    );
    final row = MyoroTableRow.fake(faker.randomGenerator.string(50)).copyWith(
      cells: [
        MyoroTableCell.fake(),
        MyoroTableCell.fake(),
        MyoroTableCell.fake(),
        MyoroTableCell.fake(),
      ],
    );

    return MyoroTable<String>(
      checkboxesEnabled: true,
      dataConfiguration: MyoroDataConfiguration(
        asyncronousItems: () async {
          await Future.delayed(const Duration(seconds: 1));
          return list;
        },
      ),
      columns: columns,
      rowBuilder: (_, __) => row,
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) => const Text('TODO'); // TODO
}
