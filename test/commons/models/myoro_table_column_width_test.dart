import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTableColumnWidth].
void main() {
  final model = MyoroTableColumnWidth.fake();

  test('MyoroTableColumnWidth constructor assertion', () {
    expect(
      () => MyoroTableColumnWidth(
        columnWidthEnum: MyoroTableColumnWidthEnum.fixed,
      ),
      throwsAssertionError,
    );
  });

  test('MyoroTableColumnWidth.copyWith', () {
    final newModel = MyoroTableColumnWidth.fake();
    expect(
      model.copyWith(
        columnWidthEnum: newModel.columnWidthEnum,
        fixedWidth: newModel.fixedWidth,
      ),
      newModel,
    );
  });

  test('MyoroTableColumnWidth.toString', () {
    expect(
      model.toString(),
      'MyoroTableColumnWidth(\n'
      '  columnWidthEnum: ${model.columnWidthEnum},\n'
      '  fixedWidth: ${model.fixedWidth},\n'
      ');',
    );
  });
}
