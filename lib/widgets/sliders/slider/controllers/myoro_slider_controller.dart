import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSlider].
class MyoroSliderController extends ValueNotifier<double> implements MyoroSliderInterface {
  /// Configuration.
  MyoroSliderConfiguration configuration;

  MyoroSliderController(this.configuration) : super(configuration.initialValue) {
    addListener(listener);
  }

  /// Sets the new value of the [MyoroSlider].
  @override
  void setValue(double value) {
    if (configuration.minValue > value || configuration.maxValue < value) return;
    this.value = value;
  }

  /// Listener of the controller.
  @override
  void listener() {
    configuration.onChanged.call(value);
  }
}
