part of 'myoro_slider_widget_showcase_view_model.dart';

/// State of [MyoroSliderWidgetShowcaseViewModel].
final class MyoroSliderWidgetShowcaseState extends ChangeNotifier {
  /// [MyoroSliderConfiguration.label]
  String _label = MyoroSliderConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.labelTextStyle]
  TextStyle? _labelTextStyle;
  TextStyle? get labelTextStyle => _labelTextStyle;
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.width]
  double? _width;
  double? get width => _width;
  set width(double? width) {
    _width = width;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.currentValueIndicatorTextBuilder]
  bool _currentValueIndicatorTextBuilderEnabled = false;
  bool get currentValueIndicatorTextBuilderEnabled => _currentValueIndicatorTextBuilderEnabled;
  set currentValueIndicatorTextBuilderEnabled(bool currentValueIndicatorTextBuilderEnabled) {
    _currentValueIndicatorTextBuilderEnabled = currentValueIndicatorTextBuilderEnabled;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.maxValueIndicatorTextBuilder]
  bool _maxValueIndicatorTextBuilderEnabled = false;
  bool get maxValueIndicatorTextBuilderEnabled => _maxValueIndicatorTextBuilderEnabled;
  set maxValueIndicatorTextBuilderEnabled(bool maxValueIndicatorTextBuilderEnabled) {
    _maxValueIndicatorTextBuilderEnabled = maxValueIndicatorTextBuilderEnabled;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.footerIndicatorTextBuilder]
  bool _footerIndicatorTextBuilderEnabled = false;
  bool get footerIndicatorTextBuilderEnabled => _footerIndicatorTextBuilderEnabled;
  set footerIndicatorTextBuilderEnabled(bool footerIndicatorTextBuilderEnabled) {
    _footerIndicatorTextBuilderEnabled = footerIndicatorTextBuilderEnabled;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.onChanged]
  bool _onChangedEnabled = false;
  bool get onChangedEnabled => _onChangedEnabled;
  set onChangedEnabled(bool onChangedEnabled) {
    _onChangedEnabled = onChangedEnabled;
    notifyListeners();
  }
}
