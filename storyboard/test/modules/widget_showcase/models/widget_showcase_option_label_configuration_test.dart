import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final model = WidgetShowcaseOptionLabelConfiguration.fake();

  test('WidgetShowcaseOptionLabelConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = WidgetShowcaseOptionLabelConfiguration.fake();
    expect(
      model.copyWith(
        label: otherModel.label,
        initialValue: otherModel.initialValue,
        initialValueProvided: otherModel.initialValue != null,
        onChanged: otherModel.onChanged,
        onChangedProvided: otherModel.onChanged != null,
      ),
      otherModel,
    );
  });

  test('WidgetShowcaseOptionLabelConfiguration.toString', () {
    expect(
      model.toString(),
      'WidgetShowcaseOptionLabelConfiguration(\n'
      '  label: ${model.label},\n'
      '  initialValue: ${model.initialValue},\n'
      '  onChanged: ${model.onChanged},\n'
      ');',
    );
  });

  test('WidgetShowcaseOptionLabelConfiguration.isNullable', () {
    expect(
      model.isNullable,
      model.initialValue != null && model.onChanged != null,
    );
  });
}
