import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroSnackBarConfiguration.fake();

  test('MyoroSnackBarConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroSnackBarConfiguration.fake();
    expect(
      model.copyWith(
        snackBarType: otherModel.snackBarType,
        showCloseButton: otherModel.showCloseButton,
        message: otherModel.message,
        child: otherModel.child,
        childProvided: otherModel.child != null,
      ),
      otherModel,
    );
  });

  test('MyoroSnackBarConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroSnackBarConfiguration(\n'
      '  snackBarType: ${model.snackBarType},\n'
      '  showCloseButton: ${model.showCloseButton},\n'
      '  message: ${model.message},\n'
      '  child: ${model.child},\n'
      ');',
    );
  });
}
