import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroBarGraphConfiguration.fake();

  test('MyoroBarGraphConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroBarGraphConfiguration.fake();
    expect(model.copyWith(sorted: otherModel.sorted, items: otherModel.items), otherModel);
  });

  test('MyoroBarGraphConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroBarGraphConfiguration(\n'
      '  sorted: ${model.sorted},\n'
      '  items: ${model.items},\n'
      ');',
    );
  });
}
