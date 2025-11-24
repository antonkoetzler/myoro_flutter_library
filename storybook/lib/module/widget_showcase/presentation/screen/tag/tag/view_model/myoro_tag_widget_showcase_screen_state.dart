part of 'myoro_tag_widget_showcase_screen_view_model.dart';

/// State of [MyoroTagWidgetShowcaseScreenViewModel].
final class MyoroTagWidgetShowcaseScreenState extends ChangeNotifier {
  static const invertDefaultValue = false;

  /// [MyoroTag.invert]
  bool _invert = invertDefaultValue;

  /// [MyoroTag.icon]
  IconData? _icon;

  /// [MyoroTag.text]
  String _text = faker.lorem.word();

  /// [MyoroTagStyle.backgroundColor]
  Color? _backgroundColor;

  /// [MyoroTagStyle.contentPadding]
  EdgeInsets? _contentPadding;

  /// [MyoroTagStyle.borderRadius]
  BorderRadius? _borderRadius;

  /// [MyoroTagStyle.border]
  Border? _border;

  /// [MyoroTagStyle.spacing]
  double? _spacing;

  /// [MyoroTagStyle.iconSize]
  double? _iconSize;

  /// [MyoroTagStyle.textStyle]
  MyoroTextStyle? _textStyle;

  /// [_invert] getter.
  bool get invert => _invert;

  /// [_icon] getter.
  IconData? get icon => _icon;

  /// [_text] getter.
  String get text => _text;

  /// [_backgroundColor] getter.
  Color? get backgroundColor => _backgroundColor;

  /// [_contentPadding] getter.
  EdgeInsets? get contentPadding => _contentPadding;

  /// [_borderRadius] getter.
  BorderRadius? get borderRadius => _borderRadius;

  /// [_border] getter.
  Border? get border => _border;

  /// [_spacing] getter.
  double? get spacing => _spacing;

  /// [_iconSize] getter.
  double? get iconSize => _iconSize;

  /// [_textStyle] getter.
  MyoroTextStyle? get textStyle => _textStyle;

  /// [_invert] setter.
  set invert(bool invert) {
    _invert = invert;
    notifyListeners();
  }

  /// [_icon] setter.
  set icon(IconData? icon) {
    _icon = icon;
    notifyListeners();
  }

  /// [_text] setter.
  set text(String text) {
    _text = text;
    notifyListeners();
  }

  /// [_backgroundColor] setter.
  set backgroundColor(Color? backgroundColor) {
    _backgroundColor = backgroundColor;
    notifyListeners();
  }

  /// [_contentPadding] setter.
  set contentPadding(EdgeInsets? contentPadding) {
    _contentPadding = contentPadding;
    notifyListeners();
  }

  /// [_borderRadius] setter.
  set borderRadius(BorderRadius? borderRadius) {
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// [_border] setter.
  set border(Border? border) {
    _border = border;
    notifyListeners();
  }

  /// [_spacing] setter.
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [_iconSize] setter.
  set iconSize(double? iconSize) {
    _iconSize = iconSize;
    notifyListeners();
  }

  /// [_textStyle] setter.
  set textStyle(MyoroTextStyle? textStyle) {
    _textStyle = textStyle;
    notifyListeners();
  }
}
