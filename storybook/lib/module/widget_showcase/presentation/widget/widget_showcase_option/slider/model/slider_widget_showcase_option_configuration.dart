import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'slider_widget_showcase_option_configuration.g.dart';

/// Configuration model of [SliderWidgetShowcaseOption].
@immutable
@myoroModel
final class SliderWidgetShowcaseOptionConfiguration with _$SliderWidgetShowcaseOptionConfigurationMixin {
  static const enabledDefaultValue = true;
  static const valueDefaultValue = 0.0;

  const SliderWidgetShowcaseOptionConfiguration({
    required this.label,
    this.enabled = enabledDefaultValue,
    this.value = valueDefaultValue,
    this.checkboxOnChanged,
    required this.sliderOnChanged,
  });

  /// [MyoroCheckboxConfiguration.label]
  final String label;

  /// [MyoroCheckboxConfiguration.value]
  final bool enabled;

  /// Initial [MyoroSliderController.value].
  final double value;

  /// [MyoroCheckboxConfiguration.onChanged]
  final SliderWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged;

  /// [MyoroSliderConfiguration.onChanged]
  final MyoroSliderOnChanged sliderOnChanged;

  @override
  SliderWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    bool? enabled,
    double? value,
    SliderWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    MyoroSliderOnChanged? sliderOnChanged,
  }) {
    return SliderWidgetShowcaseOptionConfiguration(
      label: label ?? this.label,
      enabled: enabled ?? this.enabled,
      value: value ?? this.value,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? this.checkboxOnChanged) : null,
      sliderOnChanged: sliderOnChanged ?? this.sliderOnChanged,
    );
  }
}
