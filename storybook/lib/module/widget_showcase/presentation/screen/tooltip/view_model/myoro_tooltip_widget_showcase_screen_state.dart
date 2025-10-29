part of 'myoro_tooltip_widget_showcase_screen_view_model.dart';

/// State of [MyoroTooltipWidgetShowcaseScreenViewModel].
final class MyoroTooltipWidgetShowcaseScreenState {
  /// [MyoroTooltipConfiguration.margin]
  EdgeInsets? _margin;
  EdgeInsets? get margin => _margin;
  set margin(EdgeInsets? margin) {
    _margin = margin;
  }

  /// [MyoroTooltipConfiguration.waitDuration]
  Duration _waitDuration = const Duration(milliseconds: 500);
  Duration get waitDuration => _waitDuration;
  set waitDuration(Duration waitDuration) {
    _waitDuration = waitDuration;
  }

  /// [MyoroTooltipConfiguration.text]
  String _text = 'Tooltip text';
  String get text => _text;
  set text(String text) {
    _text = text;
  }
}
