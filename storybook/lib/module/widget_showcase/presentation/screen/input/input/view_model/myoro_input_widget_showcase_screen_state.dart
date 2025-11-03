part of 'myoro_input_widget_showcase_screen_view_model.dart';

/// State of [MyoroInputWidgetShowcaseScreenViewModel].
final class MyoroInputWidgetShowcaseScreenState extends ChangeNotifier {
  // Fields
  /// [MyoroFormController] of the [MyoroForm] used for [_ValidationOption].
  final formController = MyoroFormController<String>();

  /// [MyoroInput.inputStyle]
  MyoroInputStyleEnum _inputStyle = MyoroInput.inputStyleDefaultValue;

  /// [MyoroInput.textAlign]
  TextAlign _textAlign = MyoroInput.textAlignDefaultValue;

  /// [MyoroInput.inputTextStyle]
  TextStyle? _inputTextStyle;

  /// [MyoroInput.label]
  String _label = MyoroInput.labelDefaultValue;

  /// [MyoroInput.text]
  String _text = MyoroInput.textDefaultValue;

  /// [MyoroInput.labelTextStyle]
  TextStyle? _labelTextStyle;

  /// [MyoroInput.placeholder]
  String _placeholder = MyoroInput.placeholderDefaultValue;

  /// [MyoroInput.contentPadding]
  EdgeInsets? _contentPadding;

  /// [MyoroInput.border]
  bool _borderEnabled = false;

  /// [MyoroInput.suffix]
  bool _suffixEnabled = false;

  /// [MyoroInput.enabled]
  bool _enabled = MyoroInput.enabledDefaultValue;

  /// [MyoroInput.readOnly]
  bool _readOnly = MyoroInput.readOnlyDefaultValue;

  /// [MyoroInput.canShowClearTextButton]
  bool _canShowClearTextButton = MyoroInput.canShowClearTextButtonDefaultValue;

  /// [MyoroInput.obscureText]
  bool _obscureText = MyoroInput.obscureTextDefaultValue;

  /// [MyoroInput.showObscureTextButton]
  bool _showObscureTextButton = MyoroInput.showObscureTextButtonDefaultValue;

  /// [MyoroInput.checkboxOnChanged]
  bool _checkboxOnChangedEnabled = false;

  /// [MyoroInput.validation]
  bool _validationEnabled = false;

  /// [MyoroInput.onFieldSubmitted]
  bool _onFieldSubmittedEnabled = false;

  /// [MyoroInput.onChanged]
  bool _onChangedEnabled = false;

  /// [MyoroInput.onCleared]
  bool _onClearedEnabled = false;

  // Theme Extension Properties

  /// [MyoroInputThemeExtension.border]
  InputBorder? _customBorder;

  /// [MyoroInputThemeExtension.underlinedBorder]
  UnderlineInputBorder? _underlinedBorder;

  /// [MyoroInputThemeExtension.outlinedBorder]
  OutlineInputBorder? _outlinedBorder;

  /// [MyoroInputThemeExtension.noneBorder]
  InputBorder? _noneBorder;

  /// [MyoroInputThemeExtension.primaryColor]
  Color? _primaryColor;

  /// [MyoroInputThemeExtension.errorBorderColor]
  Color? _errorBorderColor;

  /// [MyoroInputThemeExtension.cursorHeight]
  double? _cursorHeight;

  /// [MyoroInputThemeExtension.disabledOpacity]
  double? _disabledOpacity;

  /// [MyoroInputThemeExtension.spacing]
  double? _spacing;

  /// [MyoroInputThemeExtension.labelBehavior]
  FloatingLabelBehavior? _labelBehavior;

  /// [MyoroInputThemeExtension.suffixButtonMargin]
  EdgeInsets? _suffixButtonMargin;

  /// [MyoroInputThemeExtension.suffixButtonIconSize]
  double? _suffixButtonIconSize;

  /// [MyoroInputThemeExtension.clearTextButtonIcon]
  IconData? _clearTextButtonIcon;

  /// [MyoroInputThemeExtension.obscureTextButtonEnabledIcon]
  IconData? _obscureTextButtonEnabledIcon;

  /// [MyoroInputThemeExtension.obscureTextButtonDisabledIcon]
  IconData? _obscureTextButtonDisabledIcon;

  /// [MyoroInputThemeExtension.suffixIconConstraints]
  BoxConstraints? _suffixIconConstraints;

  // Getters
  /// [_inputStyle] getter.
  MyoroInputStyleEnum get inputStyle {
    return _inputStyle;
  }

  /// [_textAlign] getter.
  TextAlign get textAlign {
    return _textAlign;
  }

  /// [_get] getter.
  TextStyle? get inputTextStyle {
    return _inputTextStyle;
  }

  /// [_label] getter.
  String get label {
    return _label;
  }

  /// [_text] getter.
  String get text {
    return _text;
  }

  /// [_labelTextStyle] getter.
  TextStyle? get labelTextStyle {
    return _labelTextStyle;
  }

  /// [_placeholder] getter.
  String get placeholder {
    return _placeholder;
  }

  /// [_contentPadding] getter.
  EdgeInsets? get contentPadding {
    return _contentPadding;
  }

  /// [_borderEnabled] getter.
  bool get borderEnabled {
    return _borderEnabled;
  }

  /// [_suffixEnabled] getter.
  bool get suffixEnabled {
    return _suffixEnabled;
  }

  /// [_enabled] getter.
  bool get enabled {
    return _enabled;
  }

  /// [_readOnly] getter.
  bool get readOnly {
    return _readOnly;
  }

  /// [_canShowClearTextButton] getter.
  bool get canShowClearTextButton {
    return _canShowClearTextButton;
  }

  /// [_obscureText] getter.
  bool get obscureText {
    return _obscureText;
  }

  /// [_showObscureTextButton] getter.
  bool get showObscureTextButton {
    return _showObscureTextButton;
  }

  /// [_checkboxOnChangedEnabled] getter.
  bool get checkboxOnChangedEnabled {
    return _checkboxOnChangedEnabled;
  }

  /// [_validationEnabled] getter.
  bool get validationEnabled {
    return _validationEnabled;
  }

  /// [_onFieldSubmittedEnabled] getter.
  bool get onFieldSubmittedEnabled {
    return _onFieldSubmittedEnabled;
  }

  /// [_onChangedEnabled] getter.
  bool get onChangedEnabled {
    return _onChangedEnabled;
  }

  /// [_onClearedEnabled] getter.
  bool get onClearedEnabled {
    return _onClearedEnabled;
  }

  /// [_customBorder] getter.
  InputBorder? get customBorder {
    return _customBorder;
  }

  /// [_underlinedBorder] getter.
  UnderlineInputBorder? get underlinedBorder {
    return _underlinedBorder;
  }

  /// [_outlinedBorder] getter.
  OutlineInputBorder? get outlinedBorder {
    return _outlinedBorder;
  }

  /// [_noneBorder] getter.
  InputBorder? get noneBorder {
    return _noneBorder;
  }

  /// [_primaryColor] getter.
  Color? get primaryColor {
    return _primaryColor;
  }

  /// [_errorBorderColor] getter.
  Color? get errorBorderColor {
    return _errorBorderColor;
  }

  /// [_cursorHeight] getter.
  double? get cursorHeight {
    return _cursorHeight;
  }

  /// [_disabledOpacity] getter.
  double? get disabledOpacity {
    return _disabledOpacity;
  }

  /// [_spacing] getter.
  double? get spacing {
    return _spacing;
  }

  /// [_labelBehavior] getter.
  FloatingLabelBehavior? get labelBehavior {
    return _labelBehavior;
  }

  /// [_suffixButtonMargin] getter.
  EdgeInsets? get suffixButtonMargin {
    return _suffixButtonMargin;
  }

  /// [_suffixButtonIconSize] getter.
  double? get suffixButtonIconSize {
    return _suffixButtonIconSize;
  }

  /// [_clearTextButtonIcon] getter.
  IconData? get clearTextButtonIcon {
    return _clearTextButtonIcon;
  }

  /// [_obscureTextButtonEnabledIcon] getter.
  IconData? get obscureTextButtonEnabledIcon {
    return _obscureTextButtonEnabledIcon;
  }

  /// [_obscureTextButtonDisabledIcon] getter.
  IconData? get obscureTextButtonDisabledIcon {
    return _obscureTextButtonDisabledIcon;
  }

  /// [_suffixIconConstraints] getter.
  BoxConstraints? get suffixIconConstraints {
    return _suffixIconConstraints;
  }

  // Setters
  /// [_inputStyle] setter.
  set inputStyle(MyoroInputStyleEnum inputStyle) {
    _inputStyle = inputStyle;
    notifyListeners();
  }

  /// [_textAlign] setter.
  set textAlign(TextAlign textAlign) {
    _textAlign = textAlign;
    notifyListeners();
  }

  /// [_inputTextStyle] setter.
  set inputTextStyle(TextStyle? inputTextStyle) {
    _inputTextStyle = inputTextStyle;
    notifyListeners();
  }

  /// [_label] setter.
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [_text] setter.
  set text(String text) {
    _text = text;
    notifyListeners();
  }

  /// [_labelTextStyle] setter.
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }

  /// [_placeholder] setter.
  set placeholder(String placeholder) {
    _placeholder = placeholder;
    notifyListeners();
  }

  /// [_contentPadding] setter.
  set contentPadding(EdgeInsets? contentPadding) {
    _contentPadding = contentPadding;
    notifyListeners();
  }

  /// [_borderEnabled] setter.
  set borderEnabled(bool borderEnabled) {
    _borderEnabled = borderEnabled;
    notifyListeners();
  }

  /// [_suffixEnabled] setter.
  set suffixEnabled(bool suffixEnabled) {
    _suffixEnabled = suffixEnabled;
    notifyListeners();
  }

  /// [_enabled] setter.
  set enabled(bool enabled) {
    _enabled = enabled;
    notifyListeners();
  }

  /// [_readOnly] setter.
  set readOnly(bool readOnly) {
    _readOnly = readOnly;
    notifyListeners();
  }

  /// [_canShowClearTextButton] setter.
  set canShowClearTextButton(bool canShowClearTextButton) {
    _canShowClearTextButton = canShowClearTextButton;
    notifyListeners();
  }

  /// [_obscureText] setter.
  set obscureText(bool obscureText) {
    _obscureText = obscureText;
    notifyListeners();
  }

  /// [_showObscureTextButton] setter.
  set showObscureTextButton(bool showObscureTextButton) {
    _showObscureTextButton = showObscureTextButton;
    notifyListeners();
  }

  /// [_checkboxOnChangedEnabled] setter.
  set checkboxOnChangedEnabled(bool checkboxOnChangedEnabled) {
    _checkboxOnChangedEnabled = checkboxOnChangedEnabled;
    notifyListeners();
  }

  /// [_validationEnabled] setter.
  set validationEnabled(bool validationEnabled) {
    _validationEnabled = validationEnabled;
    notifyListeners();
  }

  /// [_onFieldSubmittedEnabled] setter.
  set onFieldSubmittedEnabled(bool onFieldSubmittedEnabled) {
    _onFieldSubmittedEnabled = onFieldSubmittedEnabled;
    notifyListeners();
  }

  /// [_onChangedEnabled] setter.
  set onChangedEnabled(bool onChangedEnabled) {
    _onChangedEnabled = onChangedEnabled;
    notifyListeners();
  }

  /// [_onClearedEnabled] setter.
  set onClearedEnabled(bool onClearedEnabled) {
    _onClearedEnabled = onClearedEnabled;
    notifyListeners();
  }

  /// [_customBorder] setter.
  set customBorder(InputBorder? customBorder) {
    _customBorder = customBorder;
    notifyListeners();
  }

  /// [_underlinedBorder] setter.
  set underlinedBorder(UnderlineInputBorder? underlinedBorder) {
    _underlinedBorder = underlinedBorder;
    notifyListeners();
  }

  /// [_outlinedBorder] setter.
  set outlinedBorder(OutlineInputBorder? outlinedBorder) {
    _outlinedBorder = outlinedBorder;
    notifyListeners();
  }

  /// [_noneBorder] setter.
  set noneBorder(InputBorder? noneBorder) {
    _noneBorder = noneBorder;
    notifyListeners();
  }

  /// [_primaryColor] setter.
  set primaryColor(Color? primaryColor) {
    _primaryColor = primaryColor;
    notifyListeners();
  }

  /// [_errorBorderColor] setter.
  set errorBorderColor(Color? errorBorderColor) {
    _errorBorderColor = errorBorderColor;
    notifyListeners();
  }

  /// [_cursorHeight] setter.
  set cursorHeight(double? cursorHeight) {
    _cursorHeight = cursorHeight;
    notifyListeners();
  }

  /// [_disabledOpacity] setter.
  set disabledOpacity(double? disabledOpacity) {
    _disabledOpacity = disabledOpacity;
    notifyListeners();
  }

  /// [_spacing] setter.
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [_labelBehavior] setter.
  set labelBehavior(FloatingLabelBehavior? labelBehavior) {
    _labelBehavior = labelBehavior;
    notifyListeners();
  }

  /// [_suffixButtonMargin] setter.
  set suffixButtonMargin(EdgeInsets? suffixButtonMargin) {
    _suffixButtonMargin = suffixButtonMargin;
    notifyListeners();
  }

  /// [_suffixButtonIconSize] setter.
  set suffixButtonIconSize(double? suffixButtonIconSize) {
    _suffixButtonIconSize = suffixButtonIconSize;
    notifyListeners();
  }

  /// [_clearTextButtonIcon] setter.
  set clearTextButtonIcon(IconData? clearTextButtonIcon) {
    _clearTextButtonIcon = clearTextButtonIcon;
    notifyListeners();
  }

  /// [_obscureTextButtonEnabledIcon] setter.
  set obscureTextButtonEnabledIcon(IconData? obscureTextButtonEnabledIcon) {
    _obscureTextButtonEnabledIcon = obscureTextButtonEnabledIcon;
    notifyListeners();
  }

  /// [_obscureTextButtonDisabledIcon] setter.
  set obscureTextButtonDisabledIcon(IconData? obscureTextButtonDisabledIcon) {
    _obscureTextButtonDisabledIcon = obscureTextButtonDisabledIcon;
    notifyListeners();
  }

  /// [_suffixIconConstraints] setter.
  set suffixIconConstraints(BoxConstraints? suffixIconConstraints) {
    _suffixIconConstraints = suffixIconConstraints;
    notifyListeners();
  }
}
