import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroDrawerConfiguration model;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    model = MyoroDrawerConfiguration.fake();
  });

  test('MyoroDrawerConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroDrawerConfiguration.fake();
    expect(
      model.copyWith(
        title: otherModel.title,
        titleProvided: otherModel.title != null,
        titleTextStyle: otherModel.titleTextStyle,
        titleTextStyleProvided: otherModel.titleTextStyle != null,
        showCloseButton: otherModel.showCloseButton,
        barrierDismissable: otherModel.barrierDismissable,
        child: otherModel.child,
      ),
      otherModel,
    );
  });

  test('MyoroDrawerConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroDrawerConfiguration(\n'
      '  title: ${model.title},\n'
      '  titleTextStyle: ${model.titleTextStyle},\n'
      '  showCloseButton: ${model.showCloseButton},\n'
      '  barrierDismissable: ${model.barrierDismissable},\n'
      '  child: ${model.child},\n'
      ');',
    );
  });
}
