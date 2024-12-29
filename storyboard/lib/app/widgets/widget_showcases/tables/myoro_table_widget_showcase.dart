import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroTable].
final class MyoroTableWidgetShowcase extends StatelessWidget {
  const MyoroTableWidgetShowcase({super.key});

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
    final columns = List.generate(
      faker.randomGenerator.integer(10, min: 1),
      (int index) => MyoroTableColumn.fake().copyWith(
        ordenationCallback: index == 0 ? () => {} : null,
      ),
    );

    return MyoroTable<String>(
      columns: columns,
      rowBuilder: (String item) => MyoroTableRow(
        cells: columns.map<MyoroTableCell>((_) {
          return MyoroTableCell.fake();
        }).toList(),
      ),
      dataConfiguration: MyoroDataConfiguration(
        asyncronousItems: () async {
          await Future.delayed(const Duration(seconds: 1));
          return List.generate(
            faker.randomGenerator.integer(100),
            (_) => faker.lorem.word(),
          );
        },
      ),
    );
  }
}
