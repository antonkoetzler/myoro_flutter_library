import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '../../theme_extensions/sliders/myoro_slider_theme_extension.dart';

/// Function that formats the value of a slider (to display a time like "1:59" for example).
typedef MyoroSliderIndicatorTextBuilder = String Function(double value);

/// Function executed when the value of the slider changes.
typedef MyoroSliderOnChanged = void Function(double value);

/// A horizontal slider.
class MyoroSlider extends StatefulWidget {
  /// Configuration.
  final MyoroSliderConfiguration configuration;

  const MyoroSlider({super.key, required this.configuration});

  @override
  State<MyoroSlider> createState() => _MyoroSliderState();
}

final class _MyoroSliderState extends State<MyoroSlider> {
  MyoroSliderConfiguration get _configuration => widget.configuration;

  late final _sliderValueNotifier = ValueNotifier<double>(
    _configuration.initialValue,
  );

  void _onChanged(double value) {
    _sliderValueNotifier.value = value;
    _configuration.onChanged.call(_sliderValueNotifier.value);
  }

  @override
  void didUpdateWidget(covariant MyoroSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    _sliderValueNotifier.value = _configuration.initialValue;
  }

  @override
  void dispose() {
    _sliderValueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroSliderThemeExtension>();
    final sliderPadding = themeExtension.sliderPadding;

    return SizedBox(
      width: _configuration.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_configuration.label.isNotEmpty)
            _Label(_configuration.label, _configuration.labelTextStyle),
          Padding(
            padding: sliderPadding,
            child: ValueListenableBuilder(
              valueListenable: _sliderValueNotifier,
              builder: (_, double sliderValue, __) {
                return Column(
                  children: [
                    Row(
                      children: [
                        if (_configuration.currentValueIndicatorTextBuilder !=
                            null) ...[
                          _IndicatorText(
                            _configuration.currentValueIndicatorTextBuilder!
                                .call(sliderValue),
                          ),
                        ],
                        Expanded(
                          child: Slider(
                            value: sliderValue,
                            min: _configuration.minValue,
                            max: _configuration.maxValue,
                            onChanged: _onChanged,
                          ),
                        ),
                        if (_configuration.maxValueIndicatorTextBuilder !=
                            null) ...[
                          _IndicatorText(
                            _configuration.maxValueIndicatorTextBuilder!.call(
                              _configuration.maxValue,
                            ),
                          ),
                        ],
                      ],
                    ),
                    if (_configuration.footerIndicatorTextBuilder != null) ...[
                      _IndicatorText(
                        _configuration.footerIndicatorTextBuilder!.call(
                          sliderValue,
                        ),
                        isFooter: true,
                      ),
                    ],
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
    return Text(
      _label,
      style:
          _labelTextStyle ??
          context
              .resolveThemeExtension<MyoroSliderThemeExtension>()
              .labelTextStyle,
    );
  }
}

final class _IndicatorText extends StatelessWidget {
  final String _text;
  final bool isFooter;

  const _IndicatorText(this._text, {this.isFooter = false});

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroSliderThemeExtension>();

    return Text(
      _text,
      textAlign: themeExtension.indicatorTextAlignment,
      style: themeExtension.indicatorTextStyle.copyWith(
        height: isFooter ? 0 : 0.5,
      ),
    );
  }
}
