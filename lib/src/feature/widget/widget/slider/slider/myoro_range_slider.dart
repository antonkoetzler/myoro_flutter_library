part of 'bundle/myoro_slider_bundle.dart';

/// Range/double-thumb slider of MFL.
class MyoroRangeSlider extends _Base {
  const MyoroRangeSlider({
    Key? key,
    this.label = '',
    this.currentValueText = '',
    this.maxValueText = '',
    this.footerText = '',
    this.min = 0.0,
    this.max = 1.0,
    required this.values,
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

  /// Start and end values of the [MyoroRangeSlider].
  final RangeValues values;

  /// Callback executed when the values are changed.
  final MyoroSliderOnChanged<RangeValues> onChanged;

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
                child: RangeSlider(values: values, min: min, max: max, onChanged: onChanged),
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
