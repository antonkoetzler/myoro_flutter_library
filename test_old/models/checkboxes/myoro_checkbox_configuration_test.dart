import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroCheckboxConfiguration model;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    model = MyoroCheckboxConfiguration.fake();
  });

  test('MyoroCheckboxConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroCheckboxConfiguration.fake();
    expect(
      model.copyWith(
        notifier: otherModel.notifier,
        notifierProvided: otherModel.notifier != null,
        label: otherModel.label,
        labelProvided: otherModel.label != null,
        labelTextStyle: otherModel.labelTextStyle,
        labelTextStyleProvided: otherModel.labelTextStyle != null,
        initialValue: otherModel.initialValue,
        initialValueProvided: otherModel.initialValue != null,
        onChanged: otherModel.onChanged,
        onChangedProvided: otherModel.onChanged != null,
      ),
      otherModel,
    );
  });

  test('MyoroCheckboxConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroCheckboxConfiguration(\n'
      '  notifier: ${model.notifier},\n'
      '  label: ${model.label},\n'
      '  labelTextStyle: ${model.labelTextStyle},\n'
      '  initialValue: ${model.initialValue},\n'
      '  onChanged: ${model.onChanged},\n'
      ');',
    );
  });
}
