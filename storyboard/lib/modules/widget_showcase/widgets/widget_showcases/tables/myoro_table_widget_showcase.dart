import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] of [MyoroTable].
///
/// TODO: Needs to be tested.
final class MyoroTableWidgetShowcase extends StatelessWidget {
  const MyoroTableWidgetShowcase({super.key});

  @override
  Widget build(_) {
    return const WidgetShowcase(widget: _Widget());
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(_) {
    return MyoroTable<String>(
      configuration: MyoroTableConfiguration(
        paginationRequest: () {
          return MyoroTablePagination(
            items:
                List.generate(
                  faker.randomGenerator.integer(100),
                  (int index) => '$index)${faker.randomGenerator.string(10)}',
                ).toSet(),
          );
        },
        columns: [
          MyoroTableColumn(
            tooltipMessage: faker.randomGenerator.boolean() ? faker.lorem.word() : null,
            widthConfiguration: const MyoroTableColumnWidthConfiguration(
              typeEnum: MyoroTableColumnWidthConfigurationEnum.expanded,
            ),
            child: const Text('Expanded'),
          ),
          MyoroTableColumn(
            tooltipMessage: faker.randomGenerator.boolean() ? faker.lorem.word() : null,
            widthConfiguration: const MyoroTableColumnWidthConfiguration(
              typeEnum: MyoroTableColumnWidthConfigurationEnum.intrinsic,
            ),
            child: const Text('Intrinsic'),
          ),
          MyoroTableColumn(
            tooltipMessage: faker.randomGenerator.boolean() ? faker.lorem.word() : null,
            widthConfiguration: const MyoroTableColumnWidthConfiguration(
              typeEnum: MyoroTableColumnWidthConfigurationEnum.fixed,
              fixedWidth: 150,
            ),
            child: const Text('Fixed'),
          ),
        ],
        rowBuilder: (String item) {
          return MyoroTableRow(
            onTapDown: (_) => print('Hello'),
            onTapUp: (_) => print('Helqweqwe'),
            cells: [Text(faker.lorem.word()), Text(faker.lorem.word()), Text(faker.lorem.word())],
          );
        },
      ),
    );
  }
}
