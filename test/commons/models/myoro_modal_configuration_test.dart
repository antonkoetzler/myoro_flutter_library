import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroModalConfiguration].
void main() {
  final model = MyoroModalConfiguration.fake();

  test('MyoroModalConfiguration.copyWith', () {
    final newModel = MyoroModalConfiguration.fake();
    expect(
      model.copyWith(
        barrierDismissable: newModel.barrierDismissable,
        constraints: newModel.constraints,
        onClosed: newModel.onClosed,
        title: newModel.title,
        showCloseButton: newModel.showCloseButton,
      ),
      newModel,
    );
  });

  test('MyoroModalConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroModalConfiguration(\n'
      '  barrierDismissable: ${model.barrierDismissable},\n'
      '  constraints: ${model.constraints},\n'
      '  onClosed: ${model.onClosed},\n'
      '  title: ${model.title},\n'
      '  showCloseButton: ${model.showCloseButton},\n'
      ');',
    );
  });
}
