import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroFormWidgetShowcaseScreen].
final class MyoroFormWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroFormWidgetShowcaseScreenState();
  MyoroFormWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroFormConfiguration.request] of [_Widget].
  Future<String> request() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return 'Form completed successfully!';
  }

  /// [MyoroInputConfiguration.validation] of [_Input].
  String validation() {
    final text = state.inputController.text;
    if (text.isEmpty) 'Text cannot be empty.';
    if (text != 'Kitty') return 'Text is not "Kitty"';
    return kMyoroEmptyString;
  }

  /// [MyoroFormConfiguration.onSuccess] of [_Widget].
  void onSuccess(BuildContext context, String? result) {
    assert(result != null, '[MyoroFormWidgetShowcaseScreenViewModel.formOnSuccess]: [result] cannot be null.');

    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(snackBarType: MyoroSnackBarTypeEnum.success, message: result!),
      ),
    );
  }

  /// [MyoroFormConfiguration.onError] of [_Widget].
  void onError(BuildContext context, String errorMessage) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(snackBarType: MyoroSnackBarTypeEnum.error, message: errorMessage),
      ),
    );
  }
}
