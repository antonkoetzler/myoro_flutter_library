import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroGroupRadioConfiguration.fake();

  test('MyoroGroupRadioConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroGroupRadioConfiguration.fake();
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
        radios: otherModel.radios,
        radiosProvided: otherModel.radios != null,
      ),
      otherModel,
    );
  });

  test('MyoroGroupRadioConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroGroupRadioConfiguration(\n'
      '  notifier: ${model.notifier},\n'
      '  direction: ${model.direction},\n'
      '  spacing: ${model.spacing},\n'
      '  runSpacing: ${model.runSpacing},\n'
      '  onChanged: ${model.onChanged},\n'
      '  radios: ${model.radios},\n'
      ');',
    );
  });
}
