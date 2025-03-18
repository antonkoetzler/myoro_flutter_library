// Unit test for [MyoroTableController].

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroTableController();

  const filterKeys = ['hello', 'world'];
  final filters = {filterKeys.first: 1, filterKeys.last: 2};

  final columnQuantity = faker.randomGenerator.integer(10);
  final rows = List.generate(
    faker.randomGenerator.integer(100, min: 50),
    (_) => MyoroTableRow.fake(columnQuantity: columnQuantity),
  ).toSet();

  setUpAll(() {
    controller.dataConfiguration = MyoroDataConfiguration(
      staticItems: const [],
      totalPages: 2,
    );
    controller.resolverController = MockMyoroResolverController();
  });

  tearDownAll(() => controller.dispose());

  test('MyoroTableController.changePage', () {
    expect(
      () => controller.changePage(controller.dataConfiguration.totalPages + 1),
      throwsA(isA<AssertionError>()),
    );

    final newPageNumber = controller.dataConfiguration.currentPage + 1;
    controller.changePage(newPageNumber);
    expect(controller.dataConfiguration.currentPage, newPageNumber);
  });

  test('MyoroTableController.setItemsPerPage', () {
    final itemsPerPage = faker.randomGenerator.integer(9999);
    controller.setItemsPerPage(itemsPerPage);
    expect(controller.dataConfiguration.itemsPerPage, itemsPerPage);
  });

  test('MyoroTableController.addFilters', () {
    controller.addFilters(filters);
    expect(controller.dataConfiguration.filters, filters);
    controller.removeFilters(filterKeys);
  });

  test('MyoroTableController.removeFilters', () {
    controller.addFilters(filters);

    controller.removeFilters(filterKeys);
    expect(controller.dataConfiguration.filters.isEmpty, isTrue);

    controller.addFilters(filters);
    controller.removeFilters([filterKeys.first]);
    expect(
      controller.dataConfiguration.filters,
      filters..remove(filterKeys.first),
    );

    controller.removeFilters(filterKeys);
    expect(controller.dataConfiguration.filters.isEmpty, isTrue);

    controller.removeFilters(filterKeys); // Shouldn't do anything
  });

  test('MyoroTableController.clearFilters', () {
    controller.addFilters(filters);
    controller.clearFilters();
    expect(controller.dataConfiguration.filters.isEmpty, isTrue);
  });

  test('MyoroTableController.selectRows', () {
    controller.selectRows(rows.toList());
    expect(controller.rowsSelected, rows);
    controller.deselectRows(rows.toList());
  });

  test('MyoroTableController.deselectRows', () {
    controller.selectRows(rows.toList());
    controller.deselectRows(rows.toList());
    expect(controller.rowsSelected.isEmpty, isTrue);

    controller.selectRows(rows.toList());
    controller.deselectRows([rows.first]);
    expect(controller.rowsSelected, rows..remove(rows.first));

    controller.deselectRows(rows.toList());
    expect(controller.rowsSelected.isEmpty, isTrue);
    controller.deselectRows(rows.toList()); // Shouldn't do anything
  });

  test('MyoroTableController.isRowSelected', () {
    final row = MyoroTableRow.fake(columnQuantity: columnQuantity);
    controller.selectRows([row]);
    expect(controller.isRowSelected(row), isTrue);
    expect(controller.isRowSelected(const MyoroTableRow(cells: [])), isFalse);
    controller.deselectRows([row]);
  });

  test('MyoroTableController.clearSelectedRows', () {
    controller.selectRows(rows.toList());
    controller.clearSelectedRows();
    expect(controller.rowsSelected.isEmpty, isTrue);
  });

  test('MyoroTableController.setOrdenatedColumn', () {
    final column = MyoroTableColumn.fake().copyWith(
      ordenationCallback: () => {},
    );
    controller.setOrdenatedColumn(column);
    expect(controller.ordenatedColumn, column);
    controller.setOrdenatedColumn();
    expect(controller.ordenatedColumn, isNull);
  });
}
