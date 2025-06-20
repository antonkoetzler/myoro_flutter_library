import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroInputWidgetShowcaseScreenViewModel].
final class MyoroInputWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroFormController] of the [MyoroForm] used for [_ValidationOption].
  final formController = MyoroFormController();

  /// [MyoroInputConfiguration.inputStyle]
  MyoroInputStyleEnum _inputStyle = MyoroInputConfiguration.inputStyleDefaultValue;
  MyoroInputStyleEnum get inputStyle => _inputStyle;
  set inputStyle(MyoroInputStyleEnum inputStyle) {
    _inputStyle = inputStyle;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.textAlign]
  TextAlign _textAlign = MyoroInputConfiguration.textAlignDefaultValue;
  TextAlign get textAlign => _textAlign;
  set textAlign(TextAlign textAlign) {
    _textAlign = textAlign;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.inputTextStyle]
  TextStyle? _inputTextStyle;
  TextStyle? get inputTextStyle => _inputTextStyle;
  set inputTextStyle(TextStyle? inputTextStyle) {
    _inputTextStyle = inputTextStyle;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.label]
  String _label = MyoroInputConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.labelTextStyle]
  TextStyle? _labelTextStyle;
  TextStyle? get labelTextStyle => _labelTextStyle;
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.placeholder]
  String _placeholder = MyoroInputConfiguration.placeholderDefaultValue;
  String get placeholder => _placeholder;
  set placeholder(String placeholder) {
    _placeholder = placeholder;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.contentPadding]
  EdgeInsets? _contentPadding;
  EdgeInsets? get contentPadding => _contentPadding;
  set contentPadding(EdgeInsets? contentPadding) {
    _contentPadding = contentPadding;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.border]
  bool _borderEnabled = false;
  bool get borderEnabled => _borderEnabled;
  set borderEnabled(bool borderEnabled) {
    _borderEnabled = borderEnabled;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.suffix]
  bool _suffixEnabled = false;
  bool get suffixEnabled => _suffixEnabled;
  set suffixEnabled(bool suffixEnabled) {
    _suffixEnabled = suffixEnabled;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.enabled]
  bool _enabled = MyoroInputConfiguration.enabledDefaultValue;
  bool get enabled => _enabled;
  set enabled(bool enabled) {
    _enabled = enabled;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.readOnly]
  bool _readOnly = MyoroInputConfiguration.readOnlyDefaultValue;
  bool get readOnly => _readOnly;
  set readOnly(bool readOnly) {
    _readOnly = readOnly;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.showClearTextButton]
  bool _showClearTextButton = MyoroInputConfiguration.showClearTextButtonDefaultValue;
  bool get showClearTextButton => _showClearTextButton;
  set showClearTextButton(bool showClearTextButton) {
    _showClearTextButton = showClearTextButton;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.checkboxOnChanged]
  bool _checkboxOnChangedEnabled = false;
  bool get checkboxOnChangedEnabled => _checkboxOnChangedEnabled;
  set checkboxOnChangedEnabled(bool checkboxOnChangedEnabled) {
    _checkboxOnChangedEnabled = checkboxOnChangedEnabled;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.validation]
  bool _validationEnabled = false;
  bool get validationEnabled => _validationEnabled;
  set validationEnabled(bool validationEnabled) {
    _validationEnabled = validationEnabled;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.onFieldSubmitted]
  bool _onFieldSubmittedEnabled = false;
  bool get onFieldSubmittedEnabled => _onFieldSubmittedEnabled;
  set onFieldSubmittedEnabled(bool onFieldSubmittedEnabled) {
    _onFieldSubmittedEnabled = onFieldSubmittedEnabled;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.onChanged]
  bool _onChangedEnabled = false;
  bool get onChangedEnabled => _onChangedEnabled;
  set onChangedEnabled(bool onChangedEnabled) {
    _onChangedEnabled = onChangedEnabled;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.onCleared]
  bool _onClearedEnabled = false;
  bool get onClearedEnabled => _onClearedEnabled;
  set onClearedEnabled(bool onClearedEnabled) {
    _onClearedEnabled = onClearedEnabled;
    notifyListeners();
  }
}
