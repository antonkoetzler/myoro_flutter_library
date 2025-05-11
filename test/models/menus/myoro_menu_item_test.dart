import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroMenuItem model;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    model = MyoroMenuItem.fake();
  });

  test('MyoroMenuItem.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroMenuItem.fake();
    expect(
      model.copyWith(
        isSelected: otherModel.isSelected,
        iconConfiguration: otherModel.iconConfiguration,
        iconConfigurationProvided: otherModel.iconConfiguration != null,
        textConfiguration: otherModel.textConfiguration,
        textConfigurationProvided: otherModel.textConfiguration != null,
        builder: otherModel.builder,
        builderProvided: otherModel.builder != null,
        onTapDown: otherModel.onTapDown,
        onTapDownProvided: otherModel.onTapDown != null,
        onTapUp: otherModel.onTapUp,
        onTapUpProvided: otherModel.onTapUp != null,
      ),
      otherModel,
    );
  });

  test('MyoroMenuItem.toString,', () {
    expect(
      model.toString(),
      'MyoroMenuItem(\n'
      '  isSelected: ${model.isSelected},\n'
      '  iconConfiguration: ${model.iconConfiguration},\n'
      '  textConfiguration: ${model.textConfiguration},\n'
      '  builder: ${model.builder},\n'
      '  onTapDown: ${model.onTapDown},\n'
      '  onTapUp: ${model.onTapUp},\n'
      ');',
    );
  });
}
