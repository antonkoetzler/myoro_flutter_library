import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'box_constraints_widget_showcase_option_configuration.g.dart';

/// Configuration model of [BoxConstraintsWidgetShowcaseOption].
@immutable
@myoroModel
final class BoxConstraintsWidgetShowcaseOptionConfiguration with $BoxConstraintsWidgetShowcaseOptionConfigurationMixin {
  static const labelDefaultValue = 'Constraints';

  const BoxConstraintsWidgetShowcaseOptionConfiguration({this.label = labelDefaultValue, required this.onChanged});

  /// Label of the [BoxConstraintsWidgetShowcaseOption].
  final String label;

  /// Function executed when the generated [BoxConstraints] change.
  final BoxConstraintsWidgetShowcaseOptionOnChanged onChanged;
}
