import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroCardConfiguration model;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    model = MyoroCardConfiguration.fake();
  });

  test('MyoroCardConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroCardConfiguration.fake();
    expect(
      model.copyWith(
        title: otherModel.title,
        titleTextStyle: otherModel.titleTextStyle,
        titleTextStyleProvided: otherModel.titleTextStyle != null,
        padding: otherModel.padding,
        paddingProvided: otherModel.padding != null,
        width: otherModel.width,
        widthProvided: otherModel.width != null,
        height: otherModel.height,
        heightProvided: otherModel.height != null,
        constraints: otherModel.constraints,
        constraintsProvided: otherModel.constraints != null,
        child: otherModel.child,
      ),
      otherModel,
    );
  });

  test('MyoroCardConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroCardConfiguration(\n'
      '  title: ${model.title},\n'
      '  titleTextStyle: ${model.titleTextStyle},\n'
      '  padding: ${model.padding},\n'
      '  width: ${model.width},\n'
      '  height: ${model.height},\n'
      '  constraints: ${model.constraints},\n'
      '  child: ${model.child},\n'
      ');',
    );
  });
}
