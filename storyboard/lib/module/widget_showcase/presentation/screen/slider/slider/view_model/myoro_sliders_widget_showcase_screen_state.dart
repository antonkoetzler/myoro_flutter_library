part of 'myoro_sliders_widget_showcase_screen_view_model.dart';

/// State of [MyoroSlidersWidgetShowcaseScreenViewModel].
final class MyoroSlidersWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroSliderConfiguration.value]
  double _sliderValue = 0.0;
  double get sliderValue => _sliderValue;
  set sliderValue(double value) {
    if (_sliderValue == value) return;
    _sliderValue = value;
    notifyListeners();
  }

  /// [MyoroRangeSliderConfiguration.value]
  RangeValues _rangeSliderValues = const RangeValues(
    MyoroSliderBaseConfiguration.minDefaultValue,
    MyoroSliderBaseConfiguration.maxDefaultValue,
  );
  RangeValues get rangeSliderValues => _rangeSliderValues;
  set rangeSliderValues(RangeValues rangeSliderValues) {
    if (_rangeSliderValues == rangeSliderValues) return;
    _rangeSliderValues = rangeSliderValues;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.label]
  String _label = MyoroSliderBaseConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    if (_label == label) return;
    _label = label;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.labelTextStyle]
  TextStyle? _labelTextStyle;
  TextStyle? get labelTextStyle => _labelTextStyle;
  set labelTextStyle(TextStyle? labelTextStyle) {
    if (_labelTextStyle == labelTextStyle) return;
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.currentValueText]
  bool _currentValueTextEnabled = false;
  bool get currentValueTextEnabled => _currentValueTextEnabled;
  set currentValueTextEnabled(bool currentValueTextEnabled) {
    if (_currentValueTextEnabled == currentValueTextEnabled) return;
    _currentValueTextEnabled = currentValueTextEnabled;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.maxValueText]
  bool _maxValueTextEnabled = false;
  bool get maxValueTextEnabled => _maxValueTextEnabled;
  set maxValueTextEnabled(bool maxValueTextEnabled) {
    if (_maxValueTextEnabled == maxValueTextEnabled) return;
    _maxValueTextEnabled = maxValueTextEnabled;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.footerText]
  bool _footerTextEnabled = false;
  bool get footerTextEnabled => _footerTextEnabled;
  set footerTextEnabled(bool footerTextEnabled) {
    if (_footerTextEnabled == footerTextEnabled) return;
    _footerTextEnabled = footerTextEnabled;
    notifyListeners();
  }
}
