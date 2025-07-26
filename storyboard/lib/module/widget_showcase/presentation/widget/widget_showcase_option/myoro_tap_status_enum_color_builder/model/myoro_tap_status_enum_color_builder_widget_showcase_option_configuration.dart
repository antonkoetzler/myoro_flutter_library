import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_tap_status_enum_color_builder_widget_showcase_option_configuration.g.dart';

/// Configuration of [MyoroTapStatusEnumColorBuilderWidgetShowcaseOption].
@immutable
@myoroModel
final class MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration
    with _$MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfigurationMixin {
  static const enabledDefaultValue = false;

  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration({
    this.title,
    this.enabled = enabledDefaultValue,
    required this.label,
    required this.checkboxOnChanged,
    this.initiallySelectedIdleColor,
    required this.idleOnChanged,
    this.initiallySelectedHoverColor,
    required this.hoverOnChanged,
    this.initiallySelectedTapColor,
    required this.tapOnChanged,
  });

  /// Title of the [WidgetShowcase] option].
  final String? title;

  /// [MyoroCheckboxConfiguration.value]
  final bool enabled;

  /// [MyoroCheckboxConfiguration.label]
  final String label;

  /// [MyoroCheckboxConfiguration.onChanged]
  final MyoroCheckboxOnChanged checkboxOnChanged;

  /// [MyoroTapStatusEnum.idle]
  final Color? initiallySelectedIdleColor;
  final MyoroSingularDropdownConfigurationOnChanged<Color> idleOnChanged;

  /// [MyoroTapStatusEnum.hover]
  final Color? initiallySelectedHoverColor;
  final MyoroSingularDropdownConfigurationOnChanged<Color> hoverOnChanged;

  /// [MyoroTapStatusEnum.tap]
  final Color? initiallySelectedTapColor;
  final MyoroSingularDropdownConfigurationOnChanged<Color> tapOnChanged;
}
