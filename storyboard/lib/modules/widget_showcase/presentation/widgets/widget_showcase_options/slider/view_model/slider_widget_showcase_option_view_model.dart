import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [SliderWidgetShowcaseOption].
final class SliderWidgetShowcaseOptionViewModel {
  SliderWidgetShowcaseOptionViewModel(this.configuration);

  /// Configuration.
  final SliderWidgetShowcaseOptionConfiguration configuration;

  /// Controller of the [MyoroSlider].
  late final sliderController = MyoroSliderController(
    MyoroSliderConfiguration(minValue: 0, maxValue: 50, initialValue: 25, onChanged: configuration.sliderOnChanged),
  );

  /// Dispose function.
  void dispose() {
    sliderController.dispose();
  }
}
