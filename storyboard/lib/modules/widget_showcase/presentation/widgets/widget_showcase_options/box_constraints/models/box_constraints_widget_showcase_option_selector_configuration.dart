import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'box_constraints_widget_showcase_option_selector_configuration.g.dart';

/// Configuration model of a [_Selector].
@immutable
@myoroModel
final class BoxConstraintsWidgetShowcaseOptionSelectorConfiguration
    with $BoxConstraintsWidgetShowcaseOptionSelectorConfigurationMixin {
  const BoxConstraintsWidgetShowcaseOptionSelectorConfiguration({
    required this.label,
    required this.checkboxOnChanged,
    required this.onChanged,
  });

  /// [MyoroSliderConfiguration.label]
  final String label;

  /// [MyoroCheckboxConfiguration.onChanged]
  final MyoroCheckboxOnChanged checkboxOnChanged;

  /// [MyoroSliderConfiguration.onChanged]
  final MyoroSliderOnChanged onChanged;
}
