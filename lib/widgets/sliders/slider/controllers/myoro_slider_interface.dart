import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroSlider].
abstract interface class MyoroSliderInterface {
  /// Sets the new value of the [MyoroSlider].
  void setValue(double value);

  /// Listener of the controller.
  @protected
  void listener();
}
