part of 'bundle/myoro_slider_bundle.dart';

/// Single-thumb slider of MFL.
class MyoroSlider extends _Base {
  const MyoroSlider({
    Key? key,
    this.label = '',
    this.currentValueText = '',
    this.maxValueText = '',
    this.footerText = '',
    this.min = 0.0,
    this.max = 1.0,
    required this.value,
    required this.onChanged,
    this.style = const MyoroSliderStyle(),
  }) : super(
         key: key,
         label: label,
         currentValueText: currentValueText,
         maxValueText: maxValueText,
         footerText: footerText,
         min: min,
         max: max,
         sliderWidget: const SizedBox.shrink(), // Will be replaced in build
         style: style,
       );

  /// Label of the slider.
  @override
  final String label;

  /// Text builder for the left of the slider.
  @override
  final String currentValueText;

  /// Text builder for the right of the slider.
  @override
  final String maxValueText;

  /// Text builder for the bottom of the slider.
  @override
  final String footerText;

  /// Minimum value of the slider.
  @override
  final double min;

  /// Maximum value of the slider.
  @override
  final double max;

  /// Value of the [MyoroSlider].
  final double value;

  /// Callback executed when the value is changed.
  final MyoroSliderOnChanged<double> onChanged;

  /// Style of the slider.
  @override
  final MyoroSliderStyle style;

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: style,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (label.isNotEmpty) _IndicatorText(label),
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
    );
  }
}
