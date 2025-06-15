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
    required this.idleOnChanged,
    required this.hoverOnChanged,
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

  /// [MyoroTapStatusEnum.idle]'s [MyoroSingularDropdownConfiguration.onChanged] option.
  final MyoroSingularDropdownConfigurationOnChanged<Color> idleOnChanged;

  /// [MyoroTapStatusEnum.hover]'s [MyoroSingularDropdownConfiguration.onChanged] option.
  final MyoroSingularDropdownConfigurationOnChanged<Color> hoverOnChanged;

  /// [MyoroTapStatusEnum.tap]'s [MyoroSingularDropdownConfiguration.onChanged] option.
  final MyoroSingularDropdownConfigurationOnChanged<Color> tapOnChanged;

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTapStatusEnumColorBuilderWidgetShowcaseOptionThemeExtension>();
    final checkboxThemeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.spacing,
      children: [
        if (title != null) Text(title!, style: checkboxThemeExtension.labelTextStyle),
        if (checkboxConfiguration != null) MyoroCheckbox(configuration: checkboxConfiguration!),
        ColorDropdownWidgetShowcaseOption(label: 'Idle color', onChanged: idleOnChanged),
        ColorDropdownWidgetShowcaseOption(label: 'Hover color', onChanged: hoverOnChanged),
        ColorDropdownWidgetShowcaseOption(label: 'Tap color', onChanged: tapOnChanged),
      ],
    );
  }
}
