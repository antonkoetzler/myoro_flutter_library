import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTableRow].
void main() {
  final model = MyoroTableRow.fake(columnQuantity: faker.randomGenerator.integer(100));

  test('MyoroTableRow.copyWith', () {
    final newModel = MyoroTableRow.fake(columnQuantity: faker.randomGenerator.integer(100));
    expect(
      model.copyWith(
        onPressed: newModel.onPressed,
        cells: newModel.cells,
      ),
      newModel,
    );
  });

  test('MyoroTableRow.toString', () {
    expect(
      model.toString(),
      'MyoroTableRow(\n'
      '  onPressed: ${model.onPressed},\n'
      '  cells: ${model.cells},\n'
      ');',
    );
  });
}
