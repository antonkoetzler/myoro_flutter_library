import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroTooltipConfiguration.fake();

  test('MyoroTooltipConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroTooltipConfiguration.fake();
    expect(
      model.copyWith(
        margin: otherModel.margin,
        marginProvided: otherModel.margin != null,
        waitDuration: otherModel.waitDuration,
        text: otherModel.text,
        child: otherModel.child,
      ),
      otherModel,
    );
  });

  test('MyoroTooltipConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroTooltipConfiguration(\n'
      '  margin: ${model.margin},\n'
      '  waitDuration: ${model.waitDuration},\n'
      '  text: ${model.text},\n'
      '  child: ${model.child},\n'
      ');',
    );
  });
}
