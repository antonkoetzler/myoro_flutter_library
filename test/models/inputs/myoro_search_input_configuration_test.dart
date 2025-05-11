import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroSearchInputConfiguration.fake();

  test('MyoroSearchInputConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroSearchInputConfiguration.fake();
    expect(
      model.copyWith(
        inputConfiguration: otherModel.inputConfiguration,
        requestWhenChanged: otherModel.requestWhenChanged,
        request: otherModel.request,
        itemBuilder: otherModel.itemBuilder,
      ),
      otherModel,
    );
  });

  test('MyoroSearchInputConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroSearchInputConfiguration(\n'
      '  inputConfiguration: ${model.inputConfiguration},\n'
      '  requestWhenChanged: ${model.requestWhenChanged},\n'
      '  request: ${model.request},\n'
      '  itemBuilder: ${model.itemBuilder},\n'
      ');',
    );
  });
}
