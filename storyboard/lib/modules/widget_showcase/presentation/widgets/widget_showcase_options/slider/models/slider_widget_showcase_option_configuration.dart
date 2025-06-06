import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'slider_widget_showcase_option_configuration.g.dart';

/// Configuration model of [SliderWidgetShowcaseOption].
@immutable
@myoroModel
final class SliderWidgetShowcaseOptionConfiguration with $SliderWidgetShowcaseOptionConfigurationMixin {
  const SliderWidgetShowcaseOptionConfiguration({
    required this.label,
    this.checkboxOnChanged,
    required this.sliderOnChanged,
  });

  /// [MyoroCheckboxConfiguration.label]
  final String label;

  /// [MyoroCheckboxConfiguration.onChanged]
  final SliderWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged;

  /// [MyoroSliderConfiguration.onChanged]
  final MyoroSliderOnChanged sliderOnChanged;
}
