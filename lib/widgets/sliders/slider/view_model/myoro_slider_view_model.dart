import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSlider].
final class MyoroSliderViewModel {
  MyoroSliderViewModel(this.configuration, this.controller) {
    controller.addListener(_controllerListener);
  }

  /// Configuration.
  final MyoroSliderConfiguration? configuration;

  /// Controller.
  final MyoroSliderController controller;

  /// Listener of [controller].
  void _controllerListener() {
    configuration?.onChanged.call(controller.value);
  }
}
