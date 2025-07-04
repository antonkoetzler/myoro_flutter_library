import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroDialogModalWidgetShowcaseScreenViewModel].
final class MyoroDialogModalWidgetShowcaseScreenState extends ChangeNotifier {
  static const _textDefaultValue = 'Hello, World!';

  /// View model of [MyoroModalWidgetShowcaseScreen].
  final _modalViewModel = MyoroModalWidgetShowcaseScreenViewModel();
  MyoroModalWidgetShowcaseScreenViewModel get modalViewModel => _modalViewModel;

  /// [MyoroDialogModalConfiguration.invertButtons]
  bool _invertButtons = MyoroDialogModalConfiguration.invertButtonsDefaultValue;
  bool get invertButtons => _invertButtons;
  set invertButtons(bool invertButtons) {
    _invertButtons = invertButtons;
    notifyListeners();
  }

  /// [MyoroDialogModalConfiguration.confirmButtonText]
  String _confirmButtonText = MyoroDialogModalConfiguration.confirmButtonTextDefaultValue;
  String get confirmButtonText => _confirmButtonText;
  set confirmButtonText(String confirmButtonText) {
    _confirmButtonText = confirmButtonText;
    notifyListeners();
  }

  /// [MyoroDialogModalConfiguration.cancelButtonText]
  String _cancelButtonText = MyoroDialogModalConfiguration.cancelButtonTextDefaultValue;
  String get cancelButtonText => _cancelButtonText;
  set cancelButtonText(String cancelButtonText) {
    _cancelButtonText = cancelButtonText;
    notifyListeners();
  }

  /// [MyoroDialogModalConfiguration.onConfirm]
  bool _onConfirmEnabled = false;
  bool get onConfirmEnabled => _onConfirmEnabled;
  set onConfirmEnabled(bool onConfirmEnabled) {
    _onConfirmEnabled = onConfirmEnabled;
    notifyListeners();
  }

  /// [MyoroDialogModalConfiguration.onCancel]
  bool _onCancelEnabled = false;
  bool get onCancelEnabled => _onCancelEnabled;
  set onCancelEnabled(bool onCancelEnabled) {
    _onCancelEnabled = onCancelEnabled;
    notifyListeners();
  }

  /// [MyoroDialogModalConfiguration.text]
  String _text = _textDefaultValue;
  String get text => _text;
  set text(String text) {
    _text = text;
    notifyListeners();
  }

  /// [MyoroDialogModalConfiguration.textStyle]
  TextStyle? _textStyle;
  TextStyle? get textStyle => _textStyle;
  set textStyle(TextStyle? textStyle) {
    _textStyle = textStyle;
    notifyListeners();
  }

  /// [MyoroDialogModalConfiguration.child]
  Widget? _child;
  Widget? get child => _child;
  set child(Widget? child) {
    _child = child;
    notifyListeners();
  }
}
