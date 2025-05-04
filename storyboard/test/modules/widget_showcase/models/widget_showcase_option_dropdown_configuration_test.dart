import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final model = WidgetShowcaseOptionDropdownConfiguration.fake();

  test('WidgetShowcaseOptionDropdownConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = WidgetShowcaseOptionDropdownConfiguration.fake();
    expect(
      model.copyWith(
        initiallySelectedItem: otherModel.initiallySelectedItem,
        allowItemClearing: otherModel.allowItemClearing,
        onChanged: otherModel.onChanged,
      ),
      otherModel,
    );
  });

  test('WidgetShowcaseOptionDropdownConfiguration.toString', () {
    expect(
      model.toString(),
      'WidgetShowcaseOptionDropdownConfiguration(\n'
      '  initiallySelectedItem: ${model.initiallySelectedItem},\n'
      '  allowItemClearing: ${model.allowItemClearing},\n'
      '  onChanged: ${model.onChanged},\n'
      ');',
    );
  });
}
