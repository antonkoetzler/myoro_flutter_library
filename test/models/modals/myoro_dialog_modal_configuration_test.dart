import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  late final MyoroDialogModalConfiguration model;

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
    model = MyoroDialogModalConfiguration.fake();
  });

  test('MyoroDialogModalConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroDialogModalConfiguration.fake();
    expect(
      model.copyWith(
        invertButtons: otherModel.invertButtons,
        confirmButtonText: otherModel.confirmButtonText,
        confirmButtonTextProvided: otherModel.confirmButtonText != null,
        cancelButtonText: otherModel.cancelButtonText,
        cancelButtonTextProvided: otherModel.cancelButtonText != null,
        onConfirm: otherModel.onConfirm,
        onConfirmProvided: otherModel.onConfirm != null,
        onCancel: otherModel.onCancel,
        onCancelProvided: otherModel.onCancel != null,
        text: otherModel.text,
        textStyle: otherModel.textStyle,
        textStyleProvided: otherModel.textStyle != null,
        child: otherModel.child,
        childProvided: otherModel.child != null,
      ),
      otherModel,
    );
  });

  test('MyoroDialogModalConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroDialogModalConfiguration(\n'
      '  invertButtons: ${model.invertButtons},\n'
      '  confirmButtonText: ${model.confirmButtonText},\n'
      '  cancelButtonText: ${model.cancelButtonText},\n'
      '  onConfirm: ${model.onConfirm},\n'
      '  onCancel: ${model.onCancel},\n'
      '  text: ${model.text},\n'
      '  textStyle: ${model.textStyle},\n'
      '  child: ${model.child},\n'
      ');',
    );
  });
}
