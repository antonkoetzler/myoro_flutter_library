import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [SliderWidgetShowcaseOption].
final class SliderWidgetShowcaseOptionViewModel {
  SliderWidgetShowcaseOptionViewModel(this._configuration)
    : _sliderController = MyoroSliderController(minValue: 0, maxValue: 50, initialValue: _configuration.initialValue);

  /// Configuration.
  final SliderWidgetShowcaseOptionConfiguration _configuration;

  /// [_configuration] getter.
  SliderWidgetShowcaseOptionConfiguration get configuration => _configuration;

  /// [ValueNotifier] of the [MyoroSlider].
  final _sliderValueNotifier = ValueNotifier(0.0);

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

  /// [MyoroCheckboxConfiguration.onChanged]
  void checkboxOnChanged(bool value) {
    configuration.checkboxOnChanged!(value, sliderController.value);
  }
}
