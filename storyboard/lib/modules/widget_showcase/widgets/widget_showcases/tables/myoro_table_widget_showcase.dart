import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroTable].
final class MyoroTableWidgetShowcase extends StatelessWidget {
  const MyoroTableWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(widget: _Widget());
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final titleCells = List.generate(
      faker.randomGenerator.integer(5, min: 1),
      _buildColumn,
    );

    return MyoroTable(
      configuration: MyoroTableConfiguration(
        titleCells: titleCells,
        showPaginationControls: true,
        paginationBuilder: _paginationBuilder,
        rowBuilder: (String item) => _rowBuilder(item, titleCells),
      ),
    );
  }

  MyoroTablePagination<String> _paginationBuilder(_) {
    return MyoroTablePagination(
      items: List.generate(
        faker.randomGenerator.integer(100),
        (int index) => '#$index: ${faker.lorem.word()}',
      ),
      totalPages: faker.randomGenerator.integer(9999),
      acceptedItemsPerPage:
          List.generate(
            faker.randomGenerator.integer(10, min: 2),
            (int index) => index + 5,
          ).toSet(),
    );
  }

  MyoroTableRow<String> _rowBuilder(
    String item,
    List<MyoroTableColumn> titleCells,
  ) {
    return MyoroTableRow(
      cells:
          titleCells.map<Widget>((_) {
            return Text(faker.lorem.word());
          }).toList(),
    );
  }

  MyoroTableColumn _buildColumn(_) {
    final column = MyoroTableColumn.fake();
    return column.copyWith(child: _TitleCell(column));
  }
}

final class _TitleCell extends StatelessWidget {
  final MyoroTableColumn _column;

  const _TitleCell(this._column);

  @override
  Widget build(BuildContext context) {
    final widthConfiguration = _column.widthConfiguration;
    final widthConfigurationEnumValue = widthConfiguration.enumValue;
    final widthConfigurationFixedWidth = widthConfiguration.fixedWidth;

    final stringBuffer = StringBuffer(widthConfigurationEnumValue.name);
    if (widthConfigurationEnumValue.isFixed) {
      stringBuffer.write(
        '(${widthConfigurationFixedWidth!.toStringAsFixed(2)}px)',
      );
    }

    return Text(
      stringBuffer.toString(),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
