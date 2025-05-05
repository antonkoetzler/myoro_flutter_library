import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final model = MyoroTapStatusEnumWidgetShowcaseOptionConfiguration.fake();

  test('MyoroTapStatusEnumWidgetShowcaseOptionConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroTapStatusEnumWidgetShowcaseOptionConfiguration.fake();
    expect(
      model.copyWith(
        labelConfiguration: otherModel.labelConfiguration,
        idleColorOnChanged: otherModel.idleColorOnChanged,
        hoverColorOnChanged: otherModel.hoverColorOnChanged,
        tapColorOnChanged: otherModel.tapColorOnChanged,
      ),
      otherModel,
    );
  });

  test('MyoroTapStatusEnumWidgetShowcaseOptionConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroTapStatusEnumWidgetShowcaseOptionConfiguration(\n'
      '  labelConfiguration: ${model.labelConfiguration},\n'
      '  idleColorOnChanged: ${model.idleColorOnChanged},\n'
      '  hoverColorOnChanged: ${model.hoverColorOnChanged},\n'
      '  tapColorOnChanged: ${model.tapColorOnChanged},\n'
      ');',
    );
  });
}
