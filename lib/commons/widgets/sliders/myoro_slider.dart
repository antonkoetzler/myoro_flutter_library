import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the value of the slider changes.
typedef MyoroSliderOnChanged = Function(double value);

/// Builder that displays some text under the slider.
typedef MyoroSliderFooterLabelBuilder = String Function(double value);

/// A horizontal slider.
final class MyoroSlider extends StatefulWidget {
  /// Label of the slider.
  final String? label;

  /// [TextStyle] of the label.
  final TextStyle? labelTextStyle;

  /// [MyoroSlider]'s fixed width.
  final double? width;

  /// Initial value of the slider.
  final double? initialValue;

  /// Maximum value of the slider.
  final double? maxValue;

  /// Builder to display some text under the slider.
  final MyoroSliderFooterLabelBuilder? footerLabelBuilder;

  /// Function executed whenever the value of the slider changes.
  final MyoroSliderOnChanged onChanged;

  const MyoroSlider({
    super.key,
    this.label,
    this.labelTextStyle,
    this.width,
    this.initialValue,
    this.maxValue,
    this.footerLabelBuilder,
    required this.onChanged,
  });

  @override
  State<MyoroSlider> createState() => _MyoroSliderState();
}

class _MyoroSliderState extends State<MyoroSlider> {
  String? get _label => widget.label;
  TextStyle? get _labelTextStyle => widget.labelTextStyle;
  double? get _width => widget.width;
  double get _initialValue => widget.initialValue ?? 0.5;
  double get _maxValue => widget.maxValue ?? 1;
  MyoroSliderFooterLabelBuilder? get _footerLabelBuilder => widget.footerLabelBuilder;
  MyoroSliderOnChanged get _onChanged => widget.onChanged;

  late double _sliderValue;

  @override
  void initState() {
    super.initState();
    _sliderValue = _initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();

    return SizedBox(
      width: _width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_label != null)
            Text(
              _label!,
              style: _labelTextStyle ?? themeExtension.labelTextStyle,
            ),
          SizedBox(height: themeExtension.labelSliderSpacing),
          Padding(
            padding: themeExtension.sliderPadding,
            child: Slider(
              value: _sliderValue,
              max: _maxValue,
              onChanged: (double value) {
                setState(() => _sliderValue = value);
                _onChanged.call(_sliderValue);
              },
            ),
          ),
          if (_footerLabelBuilder != null)
            Center(
              child: Text(
                _footerLabelBuilder!.call(_sliderValue),
                style: themeExtension.footerLabelTextStyle,
              ),
            ),
        ],
      ),
    );
  }
}
