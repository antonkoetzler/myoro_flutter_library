import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [SliderWidgetShowcaseOption].
final class SliderWidgetShowcaseOptionViewModel {
  SliderWidgetShowcaseOptionViewModel(this.configuration);

  /// Configuration.
  final SliderWidgetShowcaseOptionConfiguration configuration;

  /// Controller of the [MyoroSlider].
  late final sliderController = MyoroSliderController(minValue: 0, maxValue: 50, initialValue: 25);

  /// Dispose function.
  void dispose() {
    sliderController.dispose();
  }
}
