import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroIconTextButtonConfiguration model;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    model = MyoroIconTextButtonConfiguration.fake();
  });

  test('MyoroIconTextButtonConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroIconTextButtonConfiguration.fake();
    expect(
      model.copyWith(
        buttonConfiguration: otherModel.buttonConfiguration,
        buttonConfigurationProvided: otherModel.buttonConfiguration != null,
        invert: otherModel.invert,
        spacing: otherModel.spacing,
        padding: otherModel.padding,
        contentColorBuilder: otherModel.contentColorBuilder,
        contentColorBuilderProvided: otherModel.contentColorBuilder != null,
        iconConfiguration: otherModel.iconConfiguration,
        iconConfigurationProvided: otherModel.iconConfiguration != null,
        textConfiguration: otherModel.textConfiguration,
        textConfigurationProvided: otherModel.textConfiguration != null,
      ),
      otherModel,
    );
  });

  test('MyoroIconTextButtonConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroIconTextButtonConfiguration(\n'
      '  buttonConfiguration: ${model.buttonConfiguration},\n'
      '  invert: ${model.invert},\n'
      '  spacing: ${model.spacing},\n'
      '  padding: ${model.padding},\n'
      '  contentColorBuilder: ${model.contentColorBuilder},\n'
      '  iconConfiguration: ${model.iconConfiguration},\n'
      '  textConfiguration: ${model.textConfiguration},\n'
      ');',
    );
  });
}
