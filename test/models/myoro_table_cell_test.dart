import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTableCell].
void main() {
  const model = MyoroTableCell(child: SizedBox.shrink());

  test('MyoroTableCell.copyWith', () {
    final child = Container();
    expect(model.copyWith(child: child).child, child);
  });

  test('MyoroTableCell.toString', () {
    expect(
      model.toString(),
      'MyoroTableCell(\n'
      '  child: ${model.child},\n'
      ');',
    );
  });
}
