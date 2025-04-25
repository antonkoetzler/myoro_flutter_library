import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroFilter.fake();

  test('MyoroFilter.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroFilter.fake();
    expect(model.copyWith(key: otherModel.key, value: otherModel.value), otherModel);
  });

  test('MyoroFilter.toString', () {
    expect(
      model.toString(),
      'MyoroFilter<dynamic>(\n'
      '  key: ${model.key},\n'
      '  value: ${model.value},\n'
      ');',
    );
  });
}
