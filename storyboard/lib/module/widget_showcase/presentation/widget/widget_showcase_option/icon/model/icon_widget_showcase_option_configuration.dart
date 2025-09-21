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
    this.selectedIcon,
    required this.iconOnChanged,
    this.selectedIconSize,
    this.iconSizeOnChanged,
    this.iconSizeCheckboxOnChanged,
    this.enabled,
    this.enableOptionCheckboxOnChanged,
  }) : assert(
         enabled != null ? enableOptionCheckboxOnChanged != null : true,
         '[IconWidgetShowcaseOptionConfiguration]: If [enabled] is provided, '
         '[enableOptionCheckboxOnChanged] must be provided.',
       );

  /// Label of the [IconWidgetShowcaseOption].
  final String label;

  /// Initial [IconData].
  final IconData? selectedIcon;

  /// On-changed callback when the set [IconData] is changed.
  final MyoroSingleDropdownOnChanged<IconData> iconOnChanged;

  /// Initial icon size.
  final double? selectedIconSize;

  /// On-changed callback when the set size of the [IconData] is changed.
  final IconWidgetShowcaseOptionIconSizeOnChanged? iconSizeOnChanged;

  /// On-changed callback of the [MyoroCheckbox] next to the icon size selector.
  final IconWidgetShowcaseOptionIconSizeCheckboxOnChanged? iconSizeCheckboxOnChanged;

  /// [MyoroCheckboxConfiguration.value]
  final bool? enabled;

  /// On-changed of the [MyoroCheckbox] controlling if the [IconWidgetShowcaseOption] is enabled or not.
  final IconWidgetShowcaseOptionCheckboxOnChanged? enableOptionCheckboxOnChanged;
}
