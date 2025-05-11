import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroPieGraphConfiguration.fake();

  test('MyoroPieGraphConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroPieGraphConfiguration.fake();
    expect(
      model.copyWith(
        typeEnum: otherModel.typeEnum,
        centerWidget: otherModel.centerWidget,
        centerWidgetProvided: otherModel.centerWidget != null,
        items: otherModel.items,
      ),
      otherModel,
    );
  });

  test('MyoroPieGraphConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroPieGraphConfiguration(\n'
      '  typeEnum: ${model.typeEnum},\n'
      '  centerWidget: ${model.centerWidget},\n'
      '  items: ${model.items},\n'
      ');',
    );
  });
}
