import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'icon_widget_showcase_option_configuration.g.dart';

/// Configuration model of [IconWidgetShowcaseOption].
@immutable
@myoroModel
final class IconWidgetShowcaseOptionConfiguration with _$IconWidgetShowcaseOptionConfigurationMixin {
  static const labelDefaultValue = 'Icon';

  const IconWidgetShowcaseOptionConfiguration({
    this.label = labelDefaultValue,
    this.checkboxOnChanged,
    required this.iconOnChanged,
    this.iconSizeOnChanged,
  });

  /// Label of the [IconWidgetShowcaseOption].
  final String label;

  /// On-changed of the [MyoroCheckbox] controlling if the [IconWidgetShowcaseOption] is enabled or not.
  final IconWidgetShowcaseOptionCheckboxOnChanged? checkboxOnChanged;

  /// On-changed callback when the set [IconData] is changed.
  final IconWidgetShowcaseOptionIconOnChanged iconOnChanged;

  /// On-changed callback when the set size of the [IconData] is changed.
  final IconWidgetShowcaseOptionIconSizeOnChanged? iconSizeOnChanged;
}
