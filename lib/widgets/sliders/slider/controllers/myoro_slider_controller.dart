import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSlider].
class MyoroSliderController extends ValueNotifier<double> {
  static const minValueDefaultValue = 0.0;
  static const maxValueDefaultValue = 1.0;
  static const initialValueDefaultValue = minValueDefaultValue;

  MyoroSliderController({
    this.minValue = minValueDefaultValue,
    this.maxValue = maxValueDefaultValue,
    double initialValue = initialValueDefaultValue,
  }) : super(initialValue);

  /// Minimum value of the slider.
  final double minValue;

  /// Maximum value of the slider.
  final double maxValue;

  /// Sets the new value of the [MyoroSlider].
  void setValue(double value) {
    if (minValue > value || maxValue < value) return;
    this.value = value;
  }
}
