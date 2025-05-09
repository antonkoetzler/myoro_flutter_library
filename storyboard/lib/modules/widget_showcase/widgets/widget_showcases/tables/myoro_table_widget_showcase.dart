import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] of [MyoroTable].
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
  Widget build(BuildContext context) {
    return MyoroTable<String>(
      configuration: MyoroTableConfiguration(
        request: _request,
        columns: _columns,
        rowBuilder: (String item) => _rowBuilder(context, item),
      ),
    );
  }

  Set<String> _request() {
    return List.generate(faker.randomGenerator.integer(100), (int index) => 'Item #$index').toSet();
  }

  static const List<MyoroTableColumn> _columns = [
    MyoroTableColumn(
      tooltipMessage: 'Expanded\'s tooltip message!',
      widthConfiguration: MyoroTableColumnWidthConfiguration(typeEnum: MyoroTableColumnWidthConfigurationEnum.expanded),
      child: Text('Expanded'),
    ),
    MyoroTableColumn(
      tooltipMessage: 'Intrinsic\'s tooltip message!',
      widthConfiguration: MyoroTableColumnWidthConfiguration(
        typeEnum: MyoroTableColumnWidthConfigurationEnum.intrinsic,
      ),
      child: Text('Intrinsic'),
    ),
    MyoroTableColumn(
      tooltipMessage: 'Fixed width\'s tooltip message!',
      widthConfiguration: MyoroTableColumnWidthConfiguration(
        typeEnum: MyoroTableColumnWidthConfigurationEnum.fixed,
        fixedWidth: 150,
      ),
      child: Text('Fixed width'),
    ),
  ];

  MyoroTableRow<String> _rowBuilder(BuildContext context, String item) {
    return MyoroTableRow(
      onTapDown: (String item) => _onTapDown(context, item),
      onTapUp: (String item) => _onTapUp(context, item),
      cells: List.generate(_columns.length, (_) => Text(faker.lorem.word())),
    );
  }

  void _onTapDown(BuildContext context, String item) {
    _showSnackBar(context, '$item tapped.');
  }

  void _onTapUp(BuildContext context, String item) {
    _showSnackBar(context, '$item\'s tap released.');
  }

  void _showSnackBar(BuildContext context, String message) {
    context.showSnackBar(snackBar: MyoroSnackBar(MyoroSnackBarConfiguration(message: message)));
  }
}
