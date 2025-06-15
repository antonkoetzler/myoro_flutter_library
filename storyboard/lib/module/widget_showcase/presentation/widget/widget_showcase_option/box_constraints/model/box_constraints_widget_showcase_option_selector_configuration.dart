import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'box_constraints_widget_showcase_option_selector_configuration.g.dart';

/// Configuration model of a [_Selector].
@immutable
@myoroModel
final class BoxConstraintsWidgetShowcaseOptionSelectorConfiguration
    with _$BoxConstraintsWidgetShowcaseOptionSelectorConfigurationMixin {
  const BoxConstraintsWidgetShowcaseOptionSelectorConfiguration({required this.controller, required this.label});

  /// Controller.
  final BoxConstraintsWidgetShowcaseOptionSelectorController controller;

  /// [MyoroSliderConfiguration.label]
  final String label;
}
