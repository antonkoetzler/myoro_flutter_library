part of 'slider_widget_showcase_option_view_model.dart';

/// State of [SliderWidgetShowcaseOptionViewModel].
final class SliderWidgetShowcaseOptionState {
  SliderWidgetShowcaseOptionState(this._configuration) : _sliderValueNotifier = ValueNotifier(_configuration.value);

  /// Configuration.
  SliderWidgetShowcaseOptionConfiguration _configuration;

  /// [_configuration] getter.
  SliderWidgetShowcaseOptionConfiguration get configuration {
    return _configuration;
  }

  /// [_configuration] setter.
  set configuration(SliderWidgetShowcaseOptionConfiguration configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    sliderValue = configuration.value;
  }

  /// [ValueNotifier] of the [MyoroSlider].
  final ValueNotifier<double> _sliderValueNotifier;

  /// [_sliderValueNotifier] getter.
  ValueNotifier<double> get sliderValueNotifier => _sliderValueNotifier;

  /// Getter of [_sliderValueNotifier]'s value.
  double get sliderValue => _sliderValueNotifier.value;

  /// [_sliderValueNotifier] setter.
  set sliderValue(double sliderValue) => _sliderValueNotifier.value = sliderValue;

  /// Dispose function.
  void dispose() {
    _sliderValueNotifier.dispose();
  }

  /// [MyoroSliderConfiguration] getter.
  MyoroSliderConfiguration get sliderConfiguration {
    return MyoroSliderConfiguration(
      min: 0,
      max: 50,
      value: sliderValue,
      onChanged: (v) {
        configuration.sliderOnChanged(v);
        sliderValue = v;
      },
    );
  }
}
