part of 'slider_widget_showcase_option_view_model.dart';

/// State of [SliderWidgetShowcaseOptionViewModel].
final class SliderWidgetShowcaseOptionState {
  SliderWidgetShowcaseOptionState(this._configuration) : _sliderValueController = ValueNotifier(_configuration.value);

  /// Configuration.
  SliderWidgetShowcaseOptionConfiguration _configuration;

  /// [ValueNotifier] of the [MyoroSlider].
  final ValueNotifier<double> _sliderValueController;

  /// [_configuration] getter.
  SliderWidgetShowcaseOptionConfiguration get configuration {
    return _configuration;
  }

  /// [_sliderValueController] getter.
  ValueNotifier<double> get sliderValueController => _sliderValueController;

  /// Getter of [_sliderValueController]'s value.
  double get sliderValue => _sliderValueController.value;

  /// [_configuration] setter.
  set configuration(SliderWidgetShowcaseOptionConfiguration configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    sliderValue = configuration.value;
  }

  /// [_sliderValueController] setter.
  set sliderValue(double sliderValue) => _sliderValueController.value = sliderValue;

  /// Dispose function.
  void dispose() {
    _sliderValueController.dispose();
  }
}
