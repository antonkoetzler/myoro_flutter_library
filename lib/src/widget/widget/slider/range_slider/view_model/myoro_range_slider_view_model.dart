import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_range_slider_state.dart';

/// View model of [MyoroRangeSlider].
final class MyoroRangeSliderViewModel {
  MyoroRangeSliderViewModel(MyoroRangeSliderConfiguration configuration)
    : _state = MyoroRangeSliderState(configuration);

  /// State.
  final MyoroRangeSliderState _state;

  /// [_state] getter.
  MyoroRangeSliderState get state => _state;
}
