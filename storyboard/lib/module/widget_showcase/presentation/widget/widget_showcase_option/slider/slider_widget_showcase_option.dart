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

    final state = _viewModel.state;
    final configuration = state.configuration;
    final sliderValueNotifier = state.sliderValueNotifier;
    final sliderConfiguration = state.sliderConfiguration;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (configuration.checkboxOnChanged != null)
          Text(configuration.label, style: checkboxThemeExtension.labelTextStyle)
        else
          MyoroCheckbox(
            configuration: MyoroCheckboxConfiguration(
              label: configuration.label,
              value: configuration.enabled,
              onChanged: _viewModel.checkboxOnChanged,
            ),
          ),
        ValueListenableBuilder(
          valueListenable: sliderValueNotifier,
          builder: (_, sliderValue, _) => MyoroSlider(configuration: sliderConfiguration),
        ),
      ],
    );
  }
}
