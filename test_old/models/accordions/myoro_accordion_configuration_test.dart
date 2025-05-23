import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroAccordionConfiguration.fake();

  test('MyoroAccordionConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroAccordionConfiguration.fake();
    expect(
      model.copyWith(
        notifier: otherModel.notifier,
        notifierProvided: otherModel.notifier != null,
        items: otherModel.items,
      ),
      otherModel,
    );
  });

  test('MyoroAccordionConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroAccordionConfiguration(\n'
      '  notifier: ${model.notifier},\n'
      '  items: ${model.items},\n'
      ');',
    );
  });
}
