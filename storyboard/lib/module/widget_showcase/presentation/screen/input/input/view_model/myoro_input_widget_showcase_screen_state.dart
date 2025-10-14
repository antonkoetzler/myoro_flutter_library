import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroInputWidgetShowcaseScreenViewModel].
final class MyoroInputWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroFormNotifier] of the [MyoroForm] used for [_ValidationOption].
  final formNotifier = MyoroFormNotifier();

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

  /// [MyoroInputConfiguration.obscureText]
  bool _obscureText = MyoroInputConfiguration.obscureTextDefaultValue;
  bool get obscureText => _obscureText;
  set obscureText(bool obscureText) {
    _obscureText = obscureText;
    notifyListeners();
  }

  /// [MyoroInputConfiguration.showToggleHiddenButton]
  bool _showToggleHiddenButton = MyoroInputConfiguration.showToggleHiddenButtonDefaultValue;
  bool get showToggleHiddenButton => _showToggleHiddenButton;
  set showToggleHiddenButton(bool showToggleHiddenButton) {
    _showToggleHiddenButton = showToggleHiddenButton;
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

  // Theme Extension Properties

  /// [MyoroInputThemeExtension.border]
  InputBorder? _customBorder;
  InputBorder? get customBorder => _customBorder;
  set customBorder(InputBorder? customBorder) {
    _customBorder = customBorder;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.underlinedBorder]
  UnderlineInputBorder? _underlinedBorder;
  UnderlineInputBorder? get underlinedBorder => _underlinedBorder;
  set underlinedBorder(UnderlineInputBorder? underlinedBorder) {
    _underlinedBorder = underlinedBorder;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.outlinedBorder]
  OutlineInputBorder? _outlinedBorder;
  OutlineInputBorder? get outlinedBorder => _outlinedBorder;
  set outlinedBorder(OutlineInputBorder? outlinedBorder) {
    _outlinedBorder = outlinedBorder;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.noneBorder]
  InputBorder? _noneBorder;
  InputBorder? get noneBorder => _noneBorder;
  set noneBorder(InputBorder? noneBorder) {
    _noneBorder = noneBorder;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.primaryColor]
  Color? _primaryColor;
  Color? get primaryColor => _primaryColor;
  set primaryColor(Color? primaryColor) {
    _primaryColor = primaryColor;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.errorBorderColor]
  Color? _errorBorderColor;
  Color? get errorBorderColor => _errorBorderColor;
  set errorBorderColor(Color? errorBorderColor) {
    _errorBorderColor = errorBorderColor;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.cursorHeight]
  double? _cursorHeight;
  double? get cursorHeight => _cursorHeight;
  set cursorHeight(double? cursorHeight) {
    _cursorHeight = cursorHeight;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.disabledOpacity]
  double? _disabledOpacity;
  double? get disabledOpacity => _disabledOpacity;
  set disabledOpacity(double? disabledOpacity) {
    _disabledOpacity = disabledOpacity;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.spacing]
  double? _spacing;
  double? get spacing => _spacing;
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.labelBehavior]
  FloatingLabelBehavior? _labelBehavior;
  FloatingLabelBehavior? get labelBehavior => _labelBehavior;
  set labelBehavior(FloatingLabelBehavior? labelBehavior) {
    _labelBehavior = labelBehavior;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.suffixButtonPadding]
  EdgeInsets? _suffixButtonPadding;
  EdgeInsets? get suffixButtonPadding => _suffixButtonPadding;
  set suffixButtonPadding(EdgeInsets? suffixButtonPadding) {
    _suffixButtonPadding = suffixButtonPadding;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.suffixButtonIconSize]
  double? _suffixButtonIconSize;
  double? get suffixButtonIconSize => _suffixButtonIconSize;
  set suffixButtonIconSize(double? suffixButtonIconSize) {
    _suffixButtonIconSize = suffixButtonIconSize;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.clearTextButtonIcon]
  IconData? _clearTextButtonIcon;
  IconData? get clearTextButtonIcon => _clearTextButtonIcon;
  set clearTextButtonIcon(IconData? clearTextButtonIcon) {
    _clearTextButtonIcon = clearTextButtonIcon;
    notifyListeners();
  }

  /// [MyoroInputThemeExtension.obscureTextButtonIcon]
  IconData? _obscureTextButtonIcon;
  IconData? get obscureTextButtonIcon => _obscureTextButtonIcon;
  set obscureTextButtonIcon(IconData? obscureTextButtonIcon) {
    _obscureTextButtonIcon = obscureTextButtonIcon;
    notifyListeners();
  }
}
