part of 'myoro_tooltip_widget_showcase_view_model.dart';

/// State of [MyoroTooltipWidgetShowcaseViewModel].
final class MyoroTooltipWidgetShowcaseState extends ChangeNotifier {
  /// [MyoroTooltipConfiguration.margin]
  EdgeInsets? _margin;
  EdgeInsets? get margin => _margin;
  set margin(EdgeInsets? margin) {
    _margin = margin;
    notifyListeners();
  }

  /// [MyoroTooltipConfiguration.waitDuration]
  Duration _waitDuration = MyoroTooltipConfiguration.waitDurationDefaultValue;
  Duration get waitDuration => _waitDuration;
  set waitDuration(Duration waitDuration) {
    _waitDuration = waitDuration;
    notifyListeners();
  }

  /// [MyoroTooltipConfiguration.text]
  String _text = MyoroTooltipConfiguration.textDefaultValue;
  String get text => _text;
  set text(String text) {
    _text = text;
    notifyListeners();
  }
}
