import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroBarGraphGroup].
void main() {
  final model = MyoroBarGraphGroup.fake();

  test('MyoroBarGraphGroup.copyWith', () {
    final newModel = MyoroBarGraphGroup.fake();
    expect(
      model.copyWith(
        x: newModel.x,
        bars: newModel.bars,
      ),
      newModel,
    );
  });

  test('MyoroBarGraphGroup.toString', () {
    expect(
      model.toString(),
      'MyoroBarGraphGroup(\n'
      '  x: ${model.x},\n'
      '  bars: ${model.bars},\n'
      ');',
    );
  });
}
