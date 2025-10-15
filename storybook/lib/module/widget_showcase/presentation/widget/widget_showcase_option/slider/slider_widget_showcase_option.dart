import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

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
  SliderWidgetShowcaseOptionConfiguration get _configuration => widget.configuration;

  late final SliderWidgetShowcaseOptionViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = SliderWidgetShowcaseOptionViewModel(_configuration);
  }

  @override
  void didUpdateWidget(covariant SliderWidgetShowcaseOption oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = widget.configuration;
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final checkboxThemeExtension = MyoroCheckboxThemeExtension.builder(context.colorScheme, context.textTheme);

    final state = _viewModel.state;
    final configuration = state.configuration;
    final sliderValueController = state.sliderValueController;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (configuration.checkboxOnChanged != null)
          MyoroCheckbox(
            configuration: MyoroCheckboxConfiguration(
              label: configuration.label,
              value: configuration.enabled,
              onChanged: _viewModel.checkboxOnChanged,
            ),
          )
        else
          Text(configuration.label, style: checkboxThemeExtension.labelTextStyle),
        ValueListenableBuilder(
          valueListenable: sliderValueController,
          builder: (_, _, _) => MyoroSlider(configuration: state.sliderConfiguration),
        ),
      ],
    );
  }
}
