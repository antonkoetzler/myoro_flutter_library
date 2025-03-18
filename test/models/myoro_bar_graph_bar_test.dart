import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroBarGraphBar].
void main() {
  final model = MyoroBarGraphBar.fake();

  test('MyoroBarGraphBar.copyWith', () {
    final newModel = MyoroBarGraphBar.fake();

    expect(
      model.copyWith(
        y: newModel.y,
        color: newModel.color,
        barSections: newModel.barSections,
      ),
      newModel,
    );
  });

  test('MyoroBarGraphBar.toString', () {
    expect(
      model.toString(),
      'MyoroBarGraphBar(\n'
      '  y: ${model.y},\n'
      '  color: ${model.color},\n'
      '  barSections: ${model.barSections},\n'
      ');',
    );
  });
}
