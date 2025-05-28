import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_indicator_text.dart';
part '_widgets/_label.dart';

/// A horizontal slider.
class MyoroSlider extends StatefulWidget {
  /// Controller.
  final MyoroSliderController? controller;

  /// Configuration.
  final MyoroSliderConfiguration? configuration;

  const MyoroSlider({super.key, this.controller, this.configuration})
    : assert(
        (controller != null) ^ (configuration != null),
        '[MyoroSlider]: [controller] (x)or [configuration] must be provided.',
      );

  @override
  State<MyoroSlider> createState() => _MyoroSliderState();
}

final class _MyoroSliderState extends State<MyoroSlider> {
  MyoroSliderController? _localController;
  MyoroSliderController get _controller {
    return widget.controller ?? (_localController ??= MyoroSliderController(widget.configuration!));
  }

  MyoroSliderConfiguration get _configuration => _controller.configuration;

  @override
  void didUpdateWidget(covariant MyoroSlider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.configuration != null) _controller.setValue(_configuration.initialValue);
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();
    final sliderPadding = themeExtension.sliderPadding;

    return SizedBox(
      width: _configuration.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_configuration.label.isNotEmpty) _Label(_configuration.label, _configuration.labelTextStyle),
          Padding(
            padding: sliderPadding,
            child: ValueListenableBuilder(
              valueListenable: _controller,
              builder: (_, double value, __) {
                return Column(
                  children: [
                    Row(
                      children: [
                        if (_configuration.currentValueIndicatorTextBuilder != null) ...[
                          _IndicatorText(_configuration.currentValueIndicatorTextBuilder!.call(value)),
                        ],
                        Expanded(
                          child: Slider(
                            value: value,
                            min: _configuration.minValue,
                            max: _configuration.maxValue,
                            onChanged: _controller.setValue,
                          ),
                        ),
                        if (_configuration.maxValueIndicatorTextBuilder != null) ...[
                          _IndicatorText(_configuration.maxValueIndicatorTextBuilder!.call(_configuration.maxValue)),
                        ],
                      ],
                    ),
                    if (_configuration.footerIndicatorTextBuilder != null) ...[
                      _IndicatorText(_configuration.footerIndicatorTextBuilder!.call(value), isFooter: true),
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
