part of '../bundle/myoro_slider_bundle.dart';

/// Base [Widget] for slider implementations.
class _Base extends StatelessWidget {
  const _Base({
    Key? key,
    required this.label,
    required this.currentValueText,
    required this.maxValueText,
    required this.footerText,
    required this.min,
    required this.max,
    required this.sliderWidget,
    required this.style,
  }) : super(key: key);

  final String label;
  final String currentValueText;
  final String maxValueText;
  final String footerText;
  final double min;
  final double max;
  final Widget sliderWidget;
  final MyoroSliderStyle style;

  @override
  Widget build(context) {
    return Provider.value(
      value: style,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (label.isNotEmpty) _IndicatorText(label),
          Row(
            children: [
              if (currentValueText.isNotEmpty) _IndicatorText(currentValueText),
              Expanded(child: sliderWidget),
              if (maxValueText.isNotEmpty) _IndicatorText(maxValueText),
            ],
          ),
          if (footerText.isNotEmpty) _IndicatorText(footerText, isFooter: true),
        ],
      ),
    );
  }
}
