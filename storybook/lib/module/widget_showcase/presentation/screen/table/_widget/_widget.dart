part of '../myoro_table_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroTableWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTableWidgetShowcaseScreenViewModel>();
    final request = List.generate(faker.randomGenerator.integer(50), (int index) => 'Item #$index').toSet;
    final columns = MyoroTableColumnWidthConfigurationEnum.values.map((value) {
      return MyoroTableColumn(
        widthConfiguration: MyoroTableColumnWidthConfiguration(typeEnum: value),
        child: Text('${value.name.capitalized} Column'),
      );
    }).toList();

    return MyoroTable<String>(
      request: request,
      columns: columns,
      rowBuilder: (item) => viewModel.rowBuilder(context, item),
    );
  }
}
