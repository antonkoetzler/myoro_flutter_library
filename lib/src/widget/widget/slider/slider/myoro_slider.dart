import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_indicator_text.dart';
part '_widget/_label.dart';

/// A horizontal slider.
class MyoroSlider extends MyoroStatefulWidget {
  /// Controller.
  final MyoroSliderController? controller;

  /// Configuration.
  final MyoroSliderConfiguration? configuration;

  const MyoroSlider({super.key, super.createViewModel, this.controller, this.configuration});

  @override
  State<MyoroSlider> createState() => _MyoroSliderState();
}

final class _MyoroSliderState extends State<MyoroSlider> {
  bool get _createViewModel => widget.createViewModel;

  MyoroSliderController? _localController;
  MyoroSliderController get _controller {
    return widget.controller ?? (_localController ??= MyoroSliderController());
  }

  MyoroSliderViewModel? _localViewModel;
  MyoroSliderViewModel get _viewModel {
    final viewModel = _createViewModel
        ? (_localViewModel ??= MyoroSliderViewModel())
        : context.read<MyoroSliderViewModel>();

    return viewModel
      ..configuration = widget.configuration
      ..controller = _controller;
  }

  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();
    final sliderPadding = themeExtension.sliderPadding;
    final configuration = _viewModel.configuration;

    final child = SizedBox(
      width: configuration?.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (configuration?.label != null && configuration?.label.isNotEmpty == true) const _Label(),
          Padding(
            padding: sliderPadding,
            child: ValueListenableBuilder(
              valueListenable: _controller,
              builder: (_, double value, _) {
                return Column(
                  children: [
                    Row(
                      children: [
                        if (configuration?.currentValueIndicatorTextBuilder != null) ...[
                          _IndicatorText(configuration!.currentValueIndicatorTextBuilder!(value)),
                        ],
                        Expanded(
                          child: Slider(
                            value: value,
                            min: _controller.minValue,
                            max: _controller.maxValue,
                            onChanged: _controller.setValue,
                          ),
                        ),
                        if (configuration?.maxValueIndicatorTextBuilder != null) ...[
                          _IndicatorText(configuration!.maxValueIndicatorTextBuilder!.call(value)),
                        ],
                      ],
                    ),
                    if (configuration?.footerIndicatorTextBuilder != null) ...[
                      _IndicatorText(configuration!.footerIndicatorTextBuilder!.call(value), isFooter: true),
                    ],
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );

    return _createViewModel ? InheritedProvider.value(value: _viewModel, child: child) : child;
  }
}
