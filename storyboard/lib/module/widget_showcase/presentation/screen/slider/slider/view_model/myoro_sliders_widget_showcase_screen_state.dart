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

  /// [MyoroSliderConfiguration.min]
  double _min = MyoroSliderBaseConfiguration.minDefaultValue;
  double get min => _min;
  set min(double min) {
    if (_min == min) return;
    _min = min;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.max]
  double _max = MyoroSliderBaseConfiguration.maxDefaultValue;
  double get max => _max;
  set max(double max) {
    if (_max == max) return;
    _max = max;
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

  // Theme Extension Properties

  /// [MyoroSliderThemeExtension.indicatorTextStyle]
  TextStyle? _indicatorTextStyle;
  TextStyle? get indicatorTextStyle => _indicatorTextStyle;
  set indicatorTextStyle(TextStyle? indicatorTextStyle) {
    if (_indicatorTextStyle == indicatorTextStyle) return;
    _indicatorTextStyle = indicatorTextStyle;
    notifyListeners();
  }

  /// [MyoroSliderThemeExtension.indicatorTextAlignment]
  TextAlign? _indicatorTextAlignment;
  TextAlign? get indicatorTextAlignment => _indicatorTextAlignment;
  set indicatorTextAlignment(TextAlign? indicatorTextAlignment) {
    if (_indicatorTextAlignment == indicatorTextAlignment) return;
    _indicatorTextAlignment = indicatorTextAlignment;
    notifyListeners();
  }
}
