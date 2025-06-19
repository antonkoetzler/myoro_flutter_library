part of 'myoro_radio_widget_showcase_view_model.dart';

/// State of [MyoroRadioWidgetShowcaseViewModel].
final class MyoroRadioWidgetShowcaseState extends ChangeNotifier {
  /// [MyoroRadioConfiguration.label]
  String _label = MyoroRadioConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [MyoroRadioConfiguration.labelTextStyle]
  TextStyle? _labelTextStyle;
  TextStyle? get labelTextStyle => _labelTextStyle;
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }

  /// [MyoroRadioConfiguration.onChanged]
  bool _onChangedEnabled = false;
  bool get onChangedEnabled => _onChangedEnabled;
  set onChangedEnabled(bool onChangedEnabled) {
    _onChangedEnabled = onChangedEnabled;
    notifyListeners();
  }
}
