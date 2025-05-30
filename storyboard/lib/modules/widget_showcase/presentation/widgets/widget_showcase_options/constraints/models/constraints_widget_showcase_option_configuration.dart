import 'package:equatable/equatable.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration model of [ConstraintsWidgetShowcase].
final class ConstraintsWidgetShowcaseOptionConfiguration extends Equatable {
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

  ConstraintsWidgetShowcaseOptionConfiguration copyWith({
    ConstraintsWidgetShowcaseOptionOnChanged? minHeightOnChanged,
    ConstraintsWidgetShowcaseOptionOnChanged? maxHeightOnChanged,
    ConstraintsWidgetShowcaseOptionOnChanged? minWidthOnChanged,
    ConstraintsWidgetShowcaseOptionOnChanged? maxWidthOnChanged,
  }) {
    return ConstraintsWidgetShowcaseOptionConfiguration(
      minHeightOnChanged: minHeightOnChanged ?? this.minHeightOnChanged,
      maxHeightOnChanged: maxHeightOnChanged ?? this.maxHeightOnChanged,
      minWidthOnChanged: minWidthOnChanged ?? this.minWidthOnChanged,
      maxWidthOnChanged: maxWidthOnChanged ?? this.maxWidthOnChanged,
    );
  }

  @override
  List<Object?> get props {
    return [minHeightOnChanged, maxHeightOnChanged, minWidthOnChanged, maxWidthOnChanged];
  }
}
