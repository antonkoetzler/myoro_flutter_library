import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSlider].
class MyoroSliderController extends ValueNotifier<double> {
  /// Configuration.
  MyoroSliderConfiguration configuration;

  MyoroSliderController(this.configuration) : super(configuration.initialValue) {
    addListener(_listener);
  }

  /// Sets the new value of the [MyoroSlider].
  void setValue(double value) {
    if (configuration.minValue > value || configuration.maxValue < value) return;
    this.value = value;
  }

  /// Listener of the controller.
  void _listener() {
    configuration.onChanged.call(value);
  }
}
