import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_indicator_text.dart';
part '_widget/_label.dart';

/// A horizontal slider.
class MyoroSlider extends MyoroStatelessWidget {
  const MyoroSlider({super.key, required this.configuration});

  /// Configuration.
  final MyoroSliderConfiguration configuration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();
    final sliderPadding = themeExtension.sliderPadding;

    final label = configuration.label;
    final min = configuration.min;
    final max = configuration.max;
    final value = configuration.value;
    final onChanged = configuration.onChanged;
    final currentValueText = configuration.currentValueText;
    final maxValueText = configuration.maxValueText;
    final footerText = configuration.footerText;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (label.isNotEmpty) _Label(configuration),
        Padding(
          padding: sliderPadding,
          child: Column(
            children: [
              Row(
                children: [
                  if (currentValueText.isNotEmpty) _IndicatorText(currentValueText),
                  Expanded(
                    child: Slider(value: value, min: min, max: max, onChanged: onChanged),
                  ),
                  if (maxValueText.isNotEmpty) _IndicatorText(maxValueText),
                ],
              ),
              if (footerText.isNotEmpty) _IndicatorText(footerText, isFooter: true),
            ],
          ),
        ),
      ],
    );
  }
}
