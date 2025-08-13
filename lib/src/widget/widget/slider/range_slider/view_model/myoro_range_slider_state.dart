part of 'myoro_range_slider_view_model.dart';

/// State of [MyoroRangeSliderViewModel].
final class MyoroRangeSliderState {
  MyoroRangeSliderState(this._configuration) : _valueNotifier = ValueNotifier(_configuration.values);

  /// Configuration.
  MyoroRangeSliderConfiguration _configuration;

  /// [_configuration] getter.
  MyoroRangeSliderConfiguration get configuration => _configuration;

  /// [_configuration] setter.
  set configuration(MyoroRangeSliderConfiguration configuration) {
    if (_configuration == configuration) return;
    if (_configuration.values != configuration.values) _valueNotifier.value = configuration.values;
    _configuration = configuration;
  }

  /// [ValueNotifier] controlling the current value of the [RangeSlider].
  ///
  /// TODO: REMOVE THIS, JUST DEPEND ON REBUILDS.
  final ValueNotifier<RangeValues> _valueNotifier;

  /// [_valueNotifier] getter.
  ValueNotifier<RangeValues> get valueNotifier => _valueNotifier;

  /// Getter of [_valueNotifier]'s value.
  RangeValues get value => _valueNotifier.value;

  /// [_valueNotifier] setter.
  set value(RangeValues values) => _valueNotifier.value = values;

  /// Dispose function.
  void dispose() => _valueNotifier.dispose();
}
