part of 'myoro_text_widget_showcase_screen_view_model.dart';

/// State of [MyoroTextWidgetShowcaseScreenViewModel].
final class MyoroTextWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroText.text]
  String _text = faker.lorem.sentence();

  /// [MyoroTextStyle.maxLines]
  int? _maxLines;

  /// [MyoroTextStyle.overflow]
  TextOverflow? _overflow;

  /// [MyoroTextStyle.alignment]
  TextAlign? _alignment;

  /// [MyoroTextStyle.style]
  TextStyle? _textStyle;

  /// [_text] getter.
  String get text => _text;

  /// [_maxLines] getter.
  int? get maxLines => _maxLines;

  /// [_overflow] getter.
  TextOverflow? get overflow => _overflow;

  /// [_alignment] getter.
  TextAlign? get alignment => _alignment;

  /// [_textStyle] getter.
  TextStyle? get textStyle => _textStyle;

  /// [_text] setter.
  set text(String text) {
    _text = text;
    notifyListeners();
  }

  /// [_maxLines] setter.
  set maxLines(int? maxLines) {
    _maxLines = maxLines;
    notifyListeners();
  }

  /// [_overflow] setter.
  set overflow(TextOverflow? overflow) {
    _overflow = overflow;
    notifyListeners();
  }

  /// [_alignment] setter.
  set alignment(TextAlign? alignment) {
    _alignment = alignment;
    notifyListeners();
  }

  /// [_textStyle] setter.
  set textStyle(TextStyle? textStyle) {
    _textStyle = textStyle;
    notifyListeners();
  }
}
