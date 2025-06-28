import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

/// Configuration of [MyoroTapStatusEnumColorBuilderWidgetShowcaseOption].
@immutable
@myoroModel
final class MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration {
  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionConfiguration({
  });

  /// Title of the [WidgetShowcase] option].
  final String? title;

  /// [MyoroCheckboxConfiguration.value]
  final bool 

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