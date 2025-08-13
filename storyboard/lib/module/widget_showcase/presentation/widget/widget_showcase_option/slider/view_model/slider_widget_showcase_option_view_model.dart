import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'slider_widget_showcase_option_state.dart';

/// View model of [SliderWidgetShowcaseOption].
final class SliderWidgetShowcaseOptionViewModel {
  SliderWidgetShowcaseOptionViewModel(SliderWidgetShowcaseOptionConfiguration configuration)
    : _state = SliderWidgetShowcaseOptionState(configuration) {
    _state.sliderValueNotifier.addListener(_sliderValueNotifierListener);
  }

  /// State.
  final SliderWidgetShowcaseOptionState _state;

  /// [_state] getter.
  SliderWidgetShowcaseOptionState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Listener of [_state]'s [SliderWidgetShowcaseOptionState.sliderValueNotifier].
  void _sliderValueNotifierListener() {
    final configuration = _state.configuration;
    final sliderValue = _state.sliderValue;
    configuration.sliderOnChanged(sliderValue);
  }

  /// [MyoroCheckboxConfiguration.onChanged]
  void checkboxOnChanged(bool value) {
    final configuration = _state.configuration;
    final sliderValue = _state.sliderValue;
    configuration.checkboxOnChanged!(value, sliderValue);
  }
}
