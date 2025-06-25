import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] option of a builder that provides
/// a [MyoroTapStatusEnum] and returns a [Color].
final class MyoroTapStatusEnumColorBuilderWidgetShowcaseOption extends StatelessWidget {
  const MyoroTapStatusEnumColorBuilderWidgetShowcaseOption({
    super.key,
    this.title,
    this.checkboxConfiguration,
    this.initiallySelectedIdleColor,
    required this.idleOnChanged,
    this.initiallySelectedHoverColor,
    required this.hoverOnChanged,
    this.initiallySelectedTapColor,
    required this.tapOnChanged,
  }) : assert(
         (title != null) ^ (checkboxConfiguration != null),
         '[MyoroTapStatusEnumColorBuilderWidgetShowcaseOption]: [title] (x)or [checkboxConfiguration] must be provided.',
       );

  /// Title of the [WidgetShowcase] option].
  final String? title;

  /// [MyoroCheckboxConfiguration] to provide a checkbox if the builder is
  /// enabled/provided or not. Used frequently as these builders are often null.
  final MyoroCheckboxConfiguration? checkboxConfiguration;

  /// [MyoroTapStatusEnum.idle]
  final Color? initiallySelectedIdleColor;
  final MyoroSingularDropdownConfigurationOnChanged<Color> idleOnChanged;

  /// [MyoroTapStatusEnum.hover]
  final Color? initiallySelectedHoverColor;
  final MyoroSingularDropdownConfigurationOnChanged<Color> hoverOnChanged;

  /// [MyoroTapStatusEnum.tap]
  final Color? initiallySelectedTapColor;
  final MyoroSingularDropdownConfigurationOnChanged<Color> tapOnChanged;

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final checkboxThemeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseThemeExtension.spacing,
      children: [
        if (title != null) Text(title!, style: checkboxThemeExtension.labelTextStyle),
        if (checkboxConfiguration != null) MyoroCheckbox(configuration: checkboxConfiguration!),
        ColorWidgetShowcaseOption(
          label: 'Idle color',
          initiallySelectedColor: initiallySelectedIdleColor,
          onChanged: idleOnChanged,
        ),
        ColorWidgetShowcaseOption(
          label: 'Hover color',
          initiallySelectedColor: initiallySelectedHoverColor,
          onChanged: hoverOnChanged,
        ),
        ColorWidgetShowcaseOption(
          label: 'Tap color',
          initiallySelectedColor: initiallySelectedTapColor,
          onChanged: tapOnChanged,
        ),
      ],
    );
  }
}
