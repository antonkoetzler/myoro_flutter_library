import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'slider_widget_showcase_option_configuration.g.dart';

/// Configuration model of [SliderWidgetShowcaseOption].
@immutable
@myoroModel
final class SliderWidgetShowcaseOptionConfiguration with _$SliderWidgetShowcaseOptionConfigurationMixin {
  static const initiallyEnabledDefaultValue = true;
  static const initialValueDefaultValue = 0.0;

  const SliderWidgetShowcaseOptionConfiguration({
    required this.label,
    this.initiallyEnabled = initiallyEnabledDefaultValue,
    this.initialValue = initialValueDefaultValue,
    this.checkboxOnChanged,
    required this.sliderOnChanged,
  });

  /// [MyoroCheckboxConfiguration.label]
  final String label;

  /// [MyoroCheckboxConfiguration.value]
  final bool initiallyEnabled;

  /// Initial [MyoroSliderController.value].
  final double initialValue;

  /// [MyoroCheckboxConfiguration.onChanged]
  final SliderWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged;

  /// [MyoroSliderConfiguration.onChanged]
  final MyoroSliderOnChanged sliderOnChanged;
}
