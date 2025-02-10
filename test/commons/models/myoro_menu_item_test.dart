import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroMenuItem].
void main() {
  final model = MyoroMenuItem.fake();

  test('MyoroMenuItem.copyWith', () {
    final newModel = MyoroMenuItem.fake();
    expect(
      model.copyWith(
        isHovered: newModel.isHovered,
        onPressed: newModel.onPressed,
        icon: newModel.icon,
        iconSize: newModel.iconSize,
        text: newModel.text,
        textStyle: newModel.textStyle,
        textAlign: newModel.textAlign,
        itemBuilder: newModel.itemBuilder,
      ),
      newModel,
    );
  });

  test('MyoroMenuItem.toString', () {
    expect(
      model.toString(),
      'MyoroMenuItem(\n'
      '  isHovered: ${model.isHovered},\n'
      '  onPressed: ${model.onPressed},\n'
      '  icon: ${model.icon},\n'
      '  iconSize: ${model.iconSize},\n'
      '  text: ${model.text},\n'
      '  textStyle: ${model.textStyle},\n'
      '  textAlign: ${model.textAlign},\n'
      '  itemBuilder: ${model.itemBuilder},\n'
      ');',
    );
  });
}
