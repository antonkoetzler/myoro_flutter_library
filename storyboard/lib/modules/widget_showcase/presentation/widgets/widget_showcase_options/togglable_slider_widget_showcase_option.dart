import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [TogglableSliderWidgetShowcaseOption.checkboxOnChanged] callback.
typedef TogglableSliderWidgetShowcaseOptionCheckboxOnChanged = void Function(bool enabled, double value);

/// Widget showcase option that displays a [MyoroSlider] and a [MyoroCheckbox]
/// to be able to either provide the value of the [MyoroSlider] or not.
final class TogglableSliderWidgetShowcaseOption extends StatefulWidget {
  const TogglableSliderWidgetShowcaseOption({
    super.key,
    required this.label,
    required this.checkboxOnChanged,
    required this.sliderOnChanged,
  });

  /// [MyoroCheckboxConfiguration.label]
  final String label;

  /// [MyoroCheckboxConfiguration.onChanged]
  final TogglableSliderWidgetShowcaseOptionCheckboxOnChanged checkboxOnChanged;

  /// [MyoroSliderConfiguration.onChanged]
  final MyoroSliderOnChanged sliderOnChanged;

  @override
  State<TogglableSliderWidgetShowcaseOption> createState() => _TogglableSliderWidgetShowcaseOptionState();
}

final class _TogglableSliderWidgetShowcaseOptionState extends State<TogglableSliderWidgetShowcaseOption> {
  String get _label => widget.label;
  TogglableSliderWidgetShowcaseOptionCheckboxOnChanged get _checkboxOnChanged => widget.checkboxOnChanged;
  MyoroSliderOnChanged get _sliderOnChanged => widget.sliderOnChanged;

  late final _sliderController = MyoroSliderController(
    MyoroSliderConfiguration(minValue: 0, maxValue: 50, initialValue: 25, onChanged: _sliderOnChanged),
  );

  @override
  Widget build(_) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyoroCheckbox(
          configuration: MyoroCheckboxConfiguration(
            label: _label,
            onChanged: (value) => _checkboxOnChanged(value, _sliderController.value),
          ),
        ),
        MyoroSlider(controller: _sliderController),
      ],
    );
  }
}
