import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroGroupCheckboxConfiguration.fake();

  test('MyoroGroupCheckboxConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroGroupCheckboxConfiguration.fake();
    expect(
      model.copyWith(
        notifier: otherModel.notifier,
        notifierProvided: otherModel.notifier != null,
        direction: otherModel.direction,
        spacing: otherModel.spacing,
        spacingProvided: otherModel.spacing != null,
        runSpacing: otherModel.runSpacing,
        runSpacingProvided: otherModel.runSpacing != null,
        onChanged: otherModel.onChanged,
        onChangedProvided: otherModel.onChanged != null,
        checkboxes: otherModel.checkboxes,
        checkboxesProvided: otherModel.checkboxes != null,
      ),
      otherModel,
    );
  });

  test('MyoroGroupCheckboxConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroGroupCheckboxConfiguration(\n'
      '  notifier: ${model.notifier},\n'
      '  direction: ${model.direction},\n'
      '  spacing: ${model.spacing},\n'
      '  runSpacing: ${model.runSpacing},\n'
      '  onChanged: ${model.onChanged},\n'
      '  checkboxes: ${model.checkboxes},\n'
      ');',
    );
  });
}
