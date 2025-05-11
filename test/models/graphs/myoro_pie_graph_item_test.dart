import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroPieGraphItem].
void main() {
  final model = MyoroPieGraphItem.fake();

  test('MyoroPieGraphItem.copyWith', () {
    final newModel = MyoroPieGraphItem.fake();
    expect(
      model.copyWith(value: newModel.value, color: newModel.color, radius: newModel.radius),
      newModel,
    );
  });

  test('MyoroPieGraphItem.toString', () {
    expect(
      model.toString(),
      'MyoroPieGraphItem(\n'
      '  value: ${model.value},\n'
      '  color: ${model.color},\n'
      '  radius: ${model.radius},\n'
      ');',
    );
  });
}
