import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that formats the value of a slider (to display a time like "1:59" for example).
typedef MyoroSliderIndicatorTextBuilder = String Function(double value);

/// Function executed when the value of the slider changes.
typedef MyoroSliderOnChanged = void Function(double value);

/// A horizontal slider.
final class MyoroSlider extends StatefulWidget {
  /// Label of the slider.
  final String label;

  /// [TextStyle] of the label.
  final TextStyle? labelTextStyle;

  /// [MyoroSlider]'s fixed width.
  final double? width;

  /// Initial value of the slider.
  final double? initialValue;

  /// Minimum value of the slider.
  final double? minValue;

  /// Maximum value of the slider.
  final double? maxValue;

  /// Text builder for the left of the slider.
  final MyoroSliderIndicatorTextBuilder? currentValueIndicatorTextBuilder;

  /// Text builder for the right of the slider.
  final MyoroSliderIndicatorTextBuilder? maxValueIndicatorTextBuilder;

  /// Text builder for the bottom of the slider.
  final MyoroSliderIndicatorTextBuilder? footerIndicatorTextBuilder;

  /// Function executed whenever the value of the slider changes.
  final MyoroSliderOnChanged onChanged;

  const MyoroSlider({
    super.key,
    this.label = '',
    this.labelTextStyle,
    this.width,
    this.initialValue,
    this.minValue,
    this.maxValue,
    this.currentValueIndicatorTextBuilder,
    this.maxValueIndicatorTextBuilder,
    this.footerIndicatorTextBuilder,
    required this.onChanged,
  });

  @override
  State<MyoroSlider> createState() => _MyoroSliderState();
}

final class _MyoroSliderState extends State<MyoroSlider> {
  String get _label => widget.label;
  TextStyle? get _labelTextStyle => widget.labelTextStyle;
  double? get _width => widget.width;
  double get _initialValue => widget.initialValue ?? _minValue;
  double get _minValue => widget.minValue ?? 0;
  double get _maxValue => widget.maxValue ?? 1;
  MyoroSliderIndicatorTextBuilder? get _currentValueIndicatorTextBuilder => widget.currentValueIndicatorTextBuilder;
  MyoroSliderIndicatorTextBuilder? get _maxValueIndicatorTextBuilder => widget.maxValueIndicatorTextBuilder;
  MyoroSliderIndicatorTextBuilder? get _footerIndicatorTextBuilder => widget.footerIndicatorTextBuilder;

  late final _sliderValueNotifier = ValueNotifier<double>(_initialValue);

  void _onChanged(double value) {
    _sliderValueNotifier.value = value;
    widget.onChanged.call(_sliderValueNotifier.value);
  }

  @override
  void didUpdateWidget(covariant MyoroSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    _sliderValueNotifier.value = _initialValue;
  }

  @override
  void dispose() {
    _sliderValueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();
    final sliderPadding = themeExtension.sliderPadding;

    return SizedBox(
      width: _width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_label.isNotEmpty) _Label(_label, _labelTextStyle),
          Padding(
            padding: sliderPadding,
            child: ValueListenableBuilder(
              valueListenable: _sliderValueNotifier,
              builder: (_, double sliderValue, __) {
                return Column(
                  children: [
                    Row(
                      children: [
                        if (_currentValueIndicatorTextBuilder != null) _IndicatorText(_currentValueIndicatorTextBuilder!.call(sliderValue)),
                        Expanded(child: Slider(value: sliderValue, min: _minValue, max: _maxValue, onChanged: _onChanged)),
                        if (_maxValueIndicatorTextBuilder != null) _IndicatorText(_maxValueIndicatorTextBuilder!.call(_maxValue)),
                      ],
                    ),
                    if (_footerIndicatorTextBuilder != null) _IndicatorText(_footerIndicatorTextBuilder!.call(sliderValue), isFooter: true),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

final class _Label extends StatelessWidget {
  final String _label;
  final TextStyle? _labelTextStyle;

  const _Label(this._label, this._labelTextStyle);

  @override
  Widget build(BuildContext context) {
    return Text(_label, style: _labelTextStyle ?? context.resolveThemeExtension<MyoroSliderThemeExtension>().labelTextStyle);
  }
}

final class _IndicatorText extends StatelessWidget {
  final String _text;
  final bool isFooter;

  const _IndicatorText(this._text, {this.isFooter = false});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();

    return Text(_text, textAlign: themeExtension.indicatorTextAlignment, style: themeExtension.indicatorTextStyle.copyWith(height: isFooter ? 0 : 0.5));
  }
}
