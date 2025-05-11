import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroAccordionItem.fake();

  test('MyoroAccordionItem.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroAccordionItem.fake();
    expect(
      model.copyWith(
        titleBuilder: otherModel.titleBuilder,
        contentBuilder: otherModel.contentBuilder,
      ),
      otherModel,
    );
  });

  test('MyoroAccordionItem.toString', () {
    expect(
      model.toString(),
      'MyoroAccordionItem(\n'
      '  titleBuilder: ${model.titleBuilder},\n'
      '  contentBuilder: ${model.contentBuilder},\n'
      ');',
    );
  });
}
