import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'padding_widget_showcase_option_configuration.g.dart';

/// Configuration model of [PaddingWidgetShowcaseOption].
@immutable
@myoroModel
final class PaddingWidgetShowcaseOptionConfiguration with _$PaddingWidgetShowcaseOptionConfigurationMixin {
  static const labelDefaultValue = 'Padding';
  static const enabledDefaultValue = false;

  const PaddingWidgetShowcaseOptionConfiguration({
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    this.checkboxOnChanged,
    required this.paddingOnChanged,
  });

  /// Label of the [PaddingWidgetShowcaseOption].
  final String label;

  /// [MyoroCheckboxConfiguration.value]
  final bool enabled;

  /// [MyoroCheckbox] on changed.
  final PaddingWidgetShowcaseOptionTitleCheckboxOnChanged? checkboxOnChanged;

  /// [PaddingWidgetShowcaseOptionEnum.all] callback.
  final PaddingWidgetShowcaseOptionSelectionOnChanged paddingOnChanged;
}
