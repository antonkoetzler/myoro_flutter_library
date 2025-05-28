import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [SliderWidgetShowcaseOption.checkboxOnChanged] callback.
typedef SliderWidgetShowcaseOptionCheckboxOnChanged = void Function(bool enabled, double value);

/// Widget showcase option that displays a [MyoroSlider] and a [MyoroCheckbox]
/// to be able to either provide the value of the [MyoroSlider] or not.
final class SliderWidgetShowcaseOption extends StatefulWidget {
  const SliderWidgetShowcaseOption({
    super.key,
    required this.label,
    required this.checkboxOnChanged,
    required this.sliderOnChanged,
  });

  /// [MyoroCheckboxConfiguration.label]
  final String label;

  /// [MyoroCheckboxConfiguration.onChanged]
  final SliderWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged;

  /// [MyoroSliderConfiguration.onChanged]
  final MyoroSliderOnChanged sliderOnChanged;

  @override
  State<SliderWidgetShowcaseOption> createState() => _SliderWidgetShowcaseOptionState();
}

final class _SliderWidgetShowcaseOptionState extends State<SliderWidgetShowcaseOption> {
  String get _label => widget.label;
  SliderWidgetShowcaseOptionCheckboxOnChanged? get _checkboxOnChanged => widget.checkboxOnChanged;
  MyoroSliderOnChanged get _sliderOnChanged => widget.sliderOnChanged;

  late final _sliderController = MyoroSliderController(
    MyoroSliderConfiguration(minValue: 0, maxValue: 50, initialValue: 25, onChanged: _sliderOnChanged),
  );

  @override
  Widget build(BuildContext context) {
    final checkboxThemeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_checkboxOnChanged != null)
          Text(_label, style: checkboxThemeExtension.labelTextStyle)
        else
          MyoroCheckbox(
            configuration: MyoroCheckboxConfiguration(
              label: _label,
              onChanged: (value) => _checkboxOnChanged!(value, _sliderController.value),
            ),
          ),
        MyoroSlider(controller: _sliderController),
      ],
    );
  }
}
