import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroBarGraphBarSection].
void main() {
  final model = MyoroBarGraphBarSection.fake();

  test('MyoroBarGraphBarSection.copyWith', () {
    final newModel = MyoroBarGraphBarSection.fake();

    expect(
      model.copyWith(fromY: newModel.fromY, toY: newModel.toY, color: newModel.color),
      newModel,
    );
  });

  test('MyoroBarGraphBarSection.toString', () {
    expect(
      model.toString(),
      'MyoroBarGraphBarSection(\n'
      '  fromY: ${model.fromY},\n'
      '  toY: ${model.toY},\n'
      '  color: ${model.color},\n'
      ');',
    );
  });
}
