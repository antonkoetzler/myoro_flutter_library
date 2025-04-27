import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Option for selecting colors to display for a [MyoroTapStatusEnum] based builder.
///
/// TODO: Needs to be tested.
final class MyoroTapStatusEnumWidgetShowcaseOption extends StatelessWidget {
  /// Configuration.
  final MyoroTapStatusEnumWidgetShowcaseOptionConfiguration configuration;

  const MyoroTapStatusEnumWidgetShowcaseOption({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: themeExtension.spacing,
      children: [
        _Label(configuration),
        ColorDropdownWidgetShowcaseOption(
          label: 'Idle color',
          onChanged: configuration.idleColorOnChanged,
        ),
        ColorDropdownWidgetShowcaseOption(
          label: 'Hover color',
          onChanged: configuration.hoverColorOnChanged,
        ),
        ColorDropdownWidgetShowcaseOption(
          label: 'Tap color',
          onChanged: configuration.tapColorOnChanged,
        ),
      ],
    );
  }
}

final class _Label extends StatelessWidget {
  final MyoroTapStatusEnumWidgetShowcaseOptionConfiguration _configuration;

  const _Label(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension>();
    final String label = _configuration.label;
    final MyoroTapStatusEnumWidgetShowcaseOptionEnabledConfiguration? enabledConfiguration =
        _configuration.enabledConfiguration;

    return (enabledConfiguration != null)
        ? MyoroCheckbox(
          label: label,
          labelTextStyle: themeExtension.labelTextStyle,
          initialValue: enabledConfiguration.initialValue,
          onChanged: enabledConfiguration.onChanged,
        )
        : Text(label, style: themeExtension.labelTextStyle);
  }
}
