import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroSlider].
final class MyoroSliderViewModel {
  /// Configuration.
  MyoroSliderConfiguration? configuration;

  /// Controller.
  MyoroSliderController? _controller;

  /// [_controller] getter.
  MyoroSliderController get controller {
    assert(_controller != null, '[MyoroSliderViewModel.controller]: [_cannot] has not been set yet.');
    return _controller!;
  }

  /// [_controller] setter.
  set controller(MyoroSliderController controller) {
    if (_controller == controller) return;
    _controller =
        controller
          ..removeListener(_controllerListener)
          ..addListener(_controllerListener);
  }

  /// Listener of [controller].
  void _controllerListener() {
    configuration?.onChanged?.call(controller.value);
  }
}
