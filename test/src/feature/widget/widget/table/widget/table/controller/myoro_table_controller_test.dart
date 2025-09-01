import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  MyoroTableConfiguration<String> createConfiguration() {
    return MyoroTableConfiguration(
      request: () => {faker.lorem.word()},
      columns: [MyoroTableColumn.fake()],
      rowBuilder: (item) => MyoroTableRow(cells: [Text(item)]),
    );
  }

  final controller = MyoroTableController<String>(configuration: createConfiguration());

  tearDown(controller.dispose);

  test('MyoroTableController', () {
    controller.fetch();
    controller.itemsRequest;
  });
}
