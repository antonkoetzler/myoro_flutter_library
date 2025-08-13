import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_range_slider_state.dart';

/// View model of [MyoroRangeSlider].
///
/// TODO: DELETE THIS AND ONLY RELY ON REBUILDS, THIS IS OVERENGINEERING
final class MyoroRangeSliderViewModel {
  MyoroRangeSliderViewModel(MyoroRangeSliderConfiguration configuration)
    : _state = MyoroRangeSliderState(configuration) {
    _state.valueNotifier.addListener(_valueNotifierListener);
  }

  /// State.
  final MyoroRangeSliderState _state;

  /// [_state] getter.
  MyoroRangeSliderState get state => _state;

  /// Dispose function.
  void dispose() => _state.dispose();

  /// [RangeSlider.onChanged]
  void onChanged(RangeValues values) => _state.value = values;

  /// [_valueNotifier] listener.
  void _valueNotifierListener() => _state.configuration.onChanged(_state.value);
}
