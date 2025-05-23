import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroButtonConfiguration.fake();

  test('MyoroButtonConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroButtonConfiguration.fake();
    expect(
      model.copyWith(
        cursor: otherModel.cursor,
        cursorProvided: otherModel.cursor != null,
        borderRadius: otherModel.borderRadius,
        borderRadiusProvided: otherModel.borderRadius != null,
        backgroundColorBuilder: otherModel.backgroundColorBuilder,
        backgroundColorBuilderProvided: otherModel.backgroundColorBuilder != null,
        borderBuilder: otherModel.borderBuilder,
        borderBuilderProvided: otherModel.borderBuilder != null,
        onTapDown: otherModel.onTapDown,
        onTapDownProvided: otherModel.onTapDown != null,
        onTapUp: otherModel.onTapUp,
        onTapUpProvided: otherModel.onTapUp != null,
      ),
      otherModel,
    );
  });

  test('MyoroButtonConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroButtonConfiguration(\n'
      '  cursor: ${model.cursor},\n'
      '  borderRadius: ${model.borderRadius},\n'
      '  backgroundColorBuilder: ${model.backgroundColorBuilder},\n'
      '  borderBuilder: ${model.borderBuilder},\n'
      '  onTapDown: ${model.onTapDown},\n'
      '  onTapUp: ${model.onTapUp},\n'
      ');',
    );
  });

  test('MyoroButtonConfiguration.tapProvided', () {
    expect(model.onTapProvided, (model.onTapDown != null) || (model.onTapUp != null));
  });
}
