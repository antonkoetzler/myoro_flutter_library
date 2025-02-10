import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroBasicDividerConfiguration].
void main() {
  final model = MyoroBasicDividerConfiguration.fake();

  test('MyoroBasicDividerConfiguration.copyWith', () {
    final newModel = MyoroBasicDividerConfiguration.fake();
    expect(
      model.copyWith(
        direction: newModel.direction,
        shortValue: newModel.shortValue,
        padding: newModel.padding,
      ),
      newModel,
    );
  });

  test('MyoroBasicDividerConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroBasicDividerConfiguration(\n'
      '  direction: ${model.direction},\n'
      '  shortValue: ${model.shortValue},\n'
      '  padding: ${model.padding},\n'
      ');',
    );
  });
}
