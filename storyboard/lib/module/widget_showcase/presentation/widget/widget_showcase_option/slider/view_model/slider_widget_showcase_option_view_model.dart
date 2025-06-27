import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [SliderWidgetShowcaseOption].
final class SliderWidgetShowcaseOptionViewModel {
  SliderWidgetShowcaseOptionViewModel(this._configuration)
    : _sliderController = MyoroSliderController(minValue: 0, maxValue: 50, initialValue: _configuration.initialValue);

  /// Configuration.
  final SliderWidgetShowcaseOptionConfiguration _configuration;
  SliderWidgetShowcaseOptionConfiguration get configuration => _configuration;

  /// Controller of the [MyoroSlider].
  late final MyoroSliderController _sliderController;
  MyoroSliderController get sliderController => _sliderController;

  /// Dispose function.
  void dispose() {
    _sliderController.dispose();
  }
}
