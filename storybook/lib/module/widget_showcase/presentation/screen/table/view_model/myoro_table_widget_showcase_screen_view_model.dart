import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroTableWidgetShowcaseScreen].
final class MyoroTableWidgetShowcaseScreenViewModel {
  /// [MyoroTableConfiguration] of the [MyoroTable].
  MyoroTableConfiguration<String> buildConfiguration(BuildContext context) {
    final request = List.generate(faker.randomGenerator.integer(50), (int index) => 'Item #$index').toSet;

    final columns =
        MyoroTableColumnWidthConfigurationEnum.values.map((value) {
          final name = value.name.capitalized;

          return MyoroTableColumn(
            tooltipMessage: 'Tooltip of the $name column.',
            widthConfiguration: MyoroTableColumnWidthConfiguration(
              typeEnum: value,
              fixedWidth: value.isFixed ? faker.randomGenerator.decimal(scale: 200, min: 50) : null,
            ),
            child: Text(name),
          );
        }).toList();

    return MyoroTableConfiguration(
      request: request,
      columns: columns,
      rowBuilder: (item) => _rowBuilder(context, item),
    );
  }

  MyoroTableRow<String> _rowBuilder(BuildContext context, String item) {
    void onTapDown(BuildContext context, String item) {
      _showSnackBar(context, '$item tapped!');
    }

    void onTapUp(BuildContext context, String item) {
      _showSnackBar(context, '$item tap released!');
    }

    return MyoroTableRow(
      onTapDown: (_) => onTapDown(context, item),
      onTapUp: (_) => onTapUp(context, item),
      cells:
          MyoroTableColumnWidthConfigurationEnum.values.map((value) {
            return Text('$item\'s value.name.capitalized cell.');
          }).toList(),
    );
  }

  /// Generic function to display a [MyoroSnackBar].
  void _showSnackBar(BuildContext context, String message) {
    context.showSnackBar(snackBar: MyoroSnackBar(configuration: MyoroSnackBarConfiguration(message: message)));
  }
}
