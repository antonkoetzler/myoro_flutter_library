import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroSliderConfiguration model;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    model = MyoroSliderConfiguration.fake();
  });

  test('MyoroSliderConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroSliderConfiguration.fake();
    expect(
      model.copyWith(
        label: otherModel.label,
        labelTextStyle: otherModel.labelTextStyle,
        labelTextStyleProvided: otherModel.labelTextStyle != null,
        width: otherModel.width,
        widthProvided: otherModel.width != null,
        minValue: otherModel.minValue,
        maxValue: otherModel.maxValue,
        initialValue: otherModel.initialValue,
        currentValueIndicatorTextBuilder: otherModel.currentValueIndicatorTextBuilder,
        currentValueIndicatorTextBuilderProvided:
            otherModel.currentValueIndicatorTextBuilder != null,
        maxValueIndicatorTextBuilder: otherModel.maxValueIndicatorTextBuilder,
        maxValueIndicatorTextBuilderProvided: otherModel.maxValueIndicatorTextBuilder != null,
        footerIndicatorTextBuilder: otherModel.footerIndicatorTextBuilder,
        footerIndicatorTextBuilderProvided: otherModel.footerIndicatorTextBuilder != null,
        onChanged: otherModel.onChanged,
      ),
      otherModel,
    );
  });

  test('MyoroSliderConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroSliderConfiguration(\n'
      '  label: ${model.label},\n'
      '  labelTextStyle: ${model.labelTextStyle},\n'
      '  width: ${model.width},\n'
      '  minValue: ${model.minValue},\n'
      '  maxValue: ${model.maxValue},\n'
      '  initialValue: ${model.initialValue},\n'
      '  currentValueIndicatorTextBuilder: ${model.currentValueIndicatorTextBuilder},\n'
      '  maxValueIndicatorTextBuilder: ${model.maxValueIndicatorTextBuilder},\n'
      '  footerIndicatorTextBuilder: ${model.footerIndicatorTextBuilder},\n'
      '  onChanged: ${model.onChanged},\n'
      ');',
    );
  });
}
