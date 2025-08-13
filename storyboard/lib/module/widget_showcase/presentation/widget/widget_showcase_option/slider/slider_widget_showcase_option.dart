import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase option that displays a [MyoroSlider] and a [MyoroCheckbox]
/// to be able to either provide the value of the [MyoroSlider] or not.
final class SliderWidgetShowcaseOption extends StatefulWidget {
  const SliderWidgetShowcaseOption({super.key, required this.configuration});

  /// Configuration.
  final SliderWidgetShowcaseOptionConfiguration configuration;

  @override
  State<SliderWidgetShowcaseOption> createState() => _SliderWidgetShowcaseOptionState();
}

final class _SliderWidgetShowcaseOptionState extends State<SliderWidgetShowcaseOption> {
  late final _viewModel = SliderWidgetShowcaseOptionViewModel(widget.configuration);

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final checkboxThemeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_viewModel.configuration.checkboxOnChanged != null)
          Text(_viewModel.configuration.label, style: checkboxThemeExtension.labelTextStyle)
        else
          MyoroCheckbox(
            configuration: MyoroCheckboxConfiguration(
              label: _viewModel.configuration.label,
              value: _viewModel.configuration.initiallyEnabled,
              onChanged: _viewModel.checkboxOnChanged,
            ),
          ),
        ValueListenableBuilder(
          valueListenable: _viewModel.sliderValueNotifier,
          builder: (_, sliderValue, _) {
            return MyoroSlider(
              configuration: MyoroSliderConfiguration(
                value: sliderValue,
                onChanged: _viewModel.configuration.sliderOnChanged,
              ),
            );
          },
        ),
      ],
    );
  }
}
