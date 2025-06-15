import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_slider_widget_showcase_state.dart';

/// View model of [MyoroSliderWidgetShowcase].
final class MyoroSliderWidgetShowcaseViewModel {
  /// State.
  final state = MyoroSliderWidgetShowcaseState();

  /// [MyoroSliderConfiguration] of the [MyoroSlider].
  MyoroSliderConfiguration configuration(BuildContext context) {
    return MyoroSliderConfiguration(
      label: state.label,
      labelTextStyle: state.labelTextStyle,
      width: state.width,
      currentValueIndicatorTextBuilder: state.currentValueIndicatorTextBuilderEnabled ? _formattedValue : null,
      maxValueIndicatorTextBuilder: state.maxValueIndicatorTextBuilderEnabled ? _formattedValue : null,
      footerIndicatorTextBuilder: state.footerIndicatorTextBuilderEnabled ? _footerIndicatorTextBuilder : null,
      onChanged: state.onChangedEnabled ? (value) => _onChanged(context, value) : null,
    );
  }

  String _footerIndicatorTextBuilder(double value) {
    return 'Footer info! Value is ${_formattedValue(value)}.';
  }

  void _onChanged(BuildContext context, double value) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(message: 'Value changed! Value is ${_formattedValue(value)}.'),
      ),
    );
  }

  String _formattedValue(double value) {
    return value.toStringAsFixed(2);
  }
}
