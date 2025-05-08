import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroTableRow.fake();

  test('MyoroTableRow.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroTableRow.fake();
    expect(
      model.copyWith(
        onTapDown: otherModel.onTapDown,
        onTapDownProvided: otherModel.onTapDown != null,
        onTapUp: otherModel.onTapUp,
        onTapUpProvided: otherModel.onTapUp != null,
        cells: otherModel.cells,
      ),
      otherModel,
    );
  });

  test('MyoroTableRow.toString', () {
    expect(
      model.toString(),
      'MyoroTableRow<dynamic>(\n'
      '  onTapDown: ${model.onTapDown},\n'
      '  onTapUp: ${model.onTapUp},\n'
      '  cells: ${model.cells},\n'
      ');',
    );
  });
}
