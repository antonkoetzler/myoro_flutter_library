import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_sliders_widget_showcase_screen_state.dart';

/// View model of [MyoroSlidersWidgetShowcaseScreen].
final class MyoroSlidersWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroSlidersWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroSlidersWidgetShowcaseScreenState get state => _state;

  /// [MyoroSliderConfiguration] of the [MyoroSlider].
  MyoroSliderConfiguration get sliderConfiguration {
    final sliderValue = _state.sliderValue;
    final formattedValue = sliderValue.toStringAsFixed(2);

    return MyoroSliderConfiguration(
      label: state.label,
      min: state.min,
      max: state.max,
      value: state.sliderValue,
      currentValueText: state.currentValueTextEnabled
          ? formattedValue
          : MyoroSliderBaseConfiguration.currentValueTextDefaultValue,
      maxValueText: state.maxValueTextEnabled ? formattedValue : MyoroSliderBaseConfiguration.maxValueTextDefaultValue,
      footerText: state.footerTextEnabled ? formattedValue : MyoroSliderBaseConfiguration.footerTextDefaultValue,
      onChanged: (value) => state.sliderValue = value,
    );
  }

  /// [MyoroRangeSliderConfiguration] of the [MyoroRangeSlider].
  MyoroRangeSliderConfiguration get rangeSliderConfiguration {
    final rangeSliderValues = _state.rangeSliderValues;
    final formattedValue = '${rangeSliderValues.start.toStringAsFixed(2)}, ${rangeSliderValues.end.toStringAsFixed(2)}';

    return MyoroRangeSliderConfiguration(
      label: state.label,
      min: state.min,
      max: state.max,
      values: state.rangeSliderValues,
      currentValueText: state.currentValueTextEnabled
          ? formattedValue
          : MyoroSliderBaseConfiguration.currentValueTextDefaultValue,
      maxValueText: state.maxValueTextEnabled ? formattedValue : MyoroSliderBaseConfiguration.maxValueTextDefaultValue,
      footerText: state.footerTextEnabled ? formattedValue : MyoroSliderBaseConfiguration.footerTextDefaultValue,
      onChanged: (value) => state.rangeSliderValues = value,
    );
  }

  /// [MyoroSliderThemeExtension] of the sliders.
  MyoroSliderThemeExtension buildStyle(BuildContext context) {
    final sliderThemeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();

    return sliderThemeExtension.copyWith(
      indicatorTextStyle: state.indicatorTextStyle,
      indicatorTextAlignment: state.indicatorTextAlignment,
    );
  }
}
