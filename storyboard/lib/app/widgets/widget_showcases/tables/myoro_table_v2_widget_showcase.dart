import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroTableV2].
final class MyoroTableV2WidgetShowcase extends StatelessWidget {
  const MyoroTableV2WidgetShowcase({super.key});

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

    return MyoroTableV2(
      configuration: MyoroTableV2Configuration(
        titleCells: titleCells,
        paginationBuilder: _paginationBuilder,
        rowBuilder: (String item) => _rowBuilder(item, titleCells),
      ),
    );
  }

  MyoroTableV2Pagination<String> _paginationBuilder(_) {
    return MyoroTableV2Pagination(
      items: List.generate(
        faker.randomGenerator.integer(100),
        (int index) => '#$index: ${faker.lorem.word()}',
      ),
    );
  }

  MyoroTableV2Row<String> _rowBuilder(
    String item,
    List<MyoroTableV2Column> titleCells,
  ) {
    return MyoroTableV2Row(
      cells:
          titleCells.map<Widget>((_) {
            return Text(faker.lorem.word());
          }).toList(),
    );
  }

  MyoroTableV2Column _buildColumn(_) {
    final column = MyoroTableV2Column.fake();
    return column.copyWith(child: _TitleCell(column));
  }
}

final class _TitleCell extends StatelessWidget {
  final MyoroTableV2Column _column;

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
