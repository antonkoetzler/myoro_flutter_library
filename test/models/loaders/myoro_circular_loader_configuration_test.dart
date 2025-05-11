import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroCircularLoaderConfiguration.fake();

  test('MyoroCircularLoaderConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroCircularLoaderConfiguration.fake();
    expect(
      model.copyWith(
        color: otherModel.color,
        colorProvided: otherModel.color != null,
        size: otherModel.size,
        sizeProvided: otherModel.size != null,
      ),
      otherModel,
    );
  });

  test('MyoroCircularLoaderConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroCircularLoaderConfiguration(\n'
      '  color: ${model.color},\n'
      '  size: ${model.size},\n'
      ');',
    );
  });
}
