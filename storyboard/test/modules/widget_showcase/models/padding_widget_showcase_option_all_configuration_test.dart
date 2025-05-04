import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final model = PaddingWidgetShowcaseOptionAllConfiguration.fake();

  test('PaddingWidgetShowcaseOptionAllConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = PaddingWidgetShowcaseOptionAllConfiguration.fake();
    expect(
      model.copyWith(
        topOnChanged: otherModel.topOnChanged,
        bottomOnChanged: otherModel.bottomOnChanged,
        leftOnChanged: otherModel.leftOnChanged,
        rightOnChanged: otherModel.rightOnChanged,
      ),
      otherModel,
    );
  });

  test('PaddingWidgetShowcaseOptionAllConfiguration.toString', () {
    expect(
      model.toString(),
      'PaddingWidgetShowcaseOptionAllConfiguration(\n'
      '  topOnChanged: ${model.topOnChanged},\n'
      '  bottomOnChanged: ${model.bottomOnChanged},\n'
      '  leftOnChanged: ${model.leftOnChanged},\n'
      '  rightOnChanged: ${model.rightOnChanged},\n'
      ');',
    );
  });
}
