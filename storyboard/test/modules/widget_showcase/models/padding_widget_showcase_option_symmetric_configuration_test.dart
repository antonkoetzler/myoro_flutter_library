import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final model = PaddingWidgetShowcaseOptionSymmetricConfiguration.fake();

  test('PaddingWidgetShowcaseOptionSymmetricConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = PaddingWidgetShowcaseOptionSymmetricConfiguration.fake();
    expect(
      model.copyWith(
        verticalOnChanged: otherModel.verticalOnChanged,
        horizontalOnChanged: otherModel.horizontalOnChanged,
      ),
      otherModel,
    );
  });

  test('PaddingWidgetShowcaseOptionSymmetricConfiguration.toString', () {
    expect(
      model.toString(),
      'PaddingWidgetShowcaseOptionSymmetricConfiguration(\n'
      '  verticalOnChanged: ${model.verticalOnChanged},\n'
      '  horizontalOnChanged: ${model.horizontalOnChanged},\n'
      ');',
    );
  });
}
