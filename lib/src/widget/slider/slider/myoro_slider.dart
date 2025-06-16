import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_indicator_text.dart';
part '_widget/_label.dart';

/// A horizontal slider.
class MyoroSlider extends StatefulWidget {
  /// Controller.
  final MyoroSliderController? controller;

  /// Configuration.
  final MyoroSliderConfiguration? configuration;

  const MyoroSlider({super.key, this.controller, this.configuration});

  @override
  State<MyoroSlider> createState() => _MyoroSliderState();
}

final class _MyoroSliderState extends State<MyoroSlider> {
  late final _viewModel = MyoroSliderViewModel(widget.configuration, widget.controller ?? MyoroSliderController());
  MyoroSliderConfiguration? get _configuration => _viewModel.configuration;
  MyoroSliderController get _controller => _viewModel.controller;

  @override
  void dispose() {
    if (widget.controller == null) _viewModel.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();
    final sliderPadding = themeExtension.sliderPadding;

    return InheritedProvider.value(
      value: _viewModel,
      child: SizedBox(
        width: _configuration?.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_configuration?.label != null && _configuration?.label.isNotEmpty == true) const _Label(),
            Padding(
              padding: sliderPadding,
              child: ValueListenableBuilder(
                valueListenable: _controller,
                builder: (_, double value, _) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          if (_configuration?.currentValueIndicatorTextBuilder != null) ...[
                            _IndicatorText(_configuration!.currentValueIndicatorTextBuilder!(value)),
                          ],
                          Expanded(
                            child: Slider(
                              value: value,
                              min: _controller.minValue,
                              max: _controller.maxValue,
                              onChanged: _controller.setValue,
                            ),
                          ),
                          if (_configuration?.maxValueIndicatorTextBuilder != null) ...[
                            _IndicatorText(_configuration!.maxValueIndicatorTextBuilder!.call(value)),
                          ],
                        ],
                      ),
                      if (_configuration?.footerIndicatorTextBuilder != null) ...[
                        _IndicatorText(_configuration!.footerIndicatorTextBuilder!.call(value), isFooter: true),
                      ],
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
