import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'constraints_widget_showcase_option_configuration.g.dart';

/// Configuration model of [ConstraintsWidgetShowcase].
@immutable
@myoroModel
final class ConstraintsWidgetShowcaseOptionConfiguration with $ConstraintsWidgetShowcaseOptionConfigurationMixin {
  const ConstraintsWidgetShowcaseOptionConfiguration({
    required this.minHeightOnChanged,
    required this.maxHeightOnChanged,
    required this.minWidthOnChanged,
    required this.maxWidthOnChanged,
  });

  /// [BoxConstraints.minHeight] on-changed.
  final ConstraintsWidgetShowcaseOptionOnChanged minHeightOnChanged;

  /// [BoxConstraints.maxHeight] on-changed.
  final ConstraintsWidgetShowcaseOptionOnChanged maxHeightOnChanged;

  /// [BoxConstraints.minWidth] on-changed.
  final ConstraintsWidgetShowcaseOptionOnChanged minWidthOnChanged;

  /// [BoxConstraints.maxWidget] on-changed.
  final ConstraintsWidgetShowcaseOptionOnChanged maxWidthOnChanged;
}
