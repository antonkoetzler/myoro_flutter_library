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
        cursor: otherModel.cursor,
        cursorProvided: otherModel.cursor != null,
        borderRadius: otherModel.borderRadius,
        borderRadiusProvided: otherModel.borderRadius != null,
        backgroundColorBuilder: otherModel.backgroundColorBuilder,
        backgroundColorBuilderProvided: otherModel.backgroundColorBuilder != null,
        borderBuilder: otherModel.borderBuilder,
        borderBuilderProvided: otherModel.borderBuilder != null,
        onTapDown: otherModel.onTapDown,
        onTapDownProvided: otherModel.onTapDown != null,
        onTapUp: otherModel.onTapUp,
        onTapUpProvided: otherModel.onTapUp != null,
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
      '  cursor: ${model.cursor},\n'
      '  borderRadius: ${model.borderRadius},\n'
      '  backgroundColorBuilder: ${model.backgroundColorBuilder},\n'
      '  borderBuilder: ${model.borderBuilder},\n'
      '  onTapDown: ${model.onTapDown},\n'
      '  onTapUp: ${model.onTapUp},\n'
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
