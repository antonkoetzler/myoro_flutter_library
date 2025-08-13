import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroSliderWidgetShowcaseScreen].
final class MyoroSliderWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroSliderWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroSliderWidgetShowcaseScreenState get state => _state;

  /// [MyoroSliderConfiguration] of the [MyoroSlider].
  MyoroSliderConfiguration get configuration {
    return MyoroSliderConfiguration(
      label: state.label,
      labelTextStyle: state.labelTextStyle,
      value: state.value,
      currentValueText:
          state.currentValueTextEnabled ? _formattedValue : MyoroSliderConfiguration.currentValueTextDefaultValue,
      maxValueText: state.maxValueTextEnabled ? _formattedValue : MyoroSliderConfiguration.maxValueTextDefaultValue,
      footerText: state.footerTextEnabled ? _footerText : MyoroSliderConfiguration.footerTextDefaultValue,
      onChanged: (value) => state.value = value,
    );
  }

  String get _footerText {
    return 'Footer info! Value is $_formattedValue.';
  }

  String get _formattedValue {
    return state.value.toStringAsFixed(2);
  }
}
