import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroAppBarConfiguration.fake();

  test('MyoroAppBarConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroAppBarConfiguration.fake();
    expect(
      model.copyWith(
        bordered: otherModel.bordered,
        backgroundColor: otherModel.backgroundColor,
        backgroundColorProvided: otherModel.backgroundColor != null,
        child: otherModel.child,
      ),
      otherModel,
    );
  });

  test('MyoroAppBarConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroAppBarConfiguration(\n'
      '  bordered: ${model.bordered},\n'
      '  backgroundColor: ${model.backgroundColor},\n'
      '  child: ${model.child},\n'
      ');',
    );
  });
}
