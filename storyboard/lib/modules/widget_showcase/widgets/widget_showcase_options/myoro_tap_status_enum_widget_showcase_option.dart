import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Option for selecting colors to display for a [MyoroTapStatusEnum] based builder.
final class MyoroTapStatusEnumWidgetShowcaseOption extends StatelessWidget {
  /// Configuration.
  final MyoroTapStatusEnumWidgetShowcaseOptionConfiguration configuration;

  const MyoroTapStatusEnumWidgetShowcaseOption({
    super.key,
    required this.configuration,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return WidgetShowcaseOption(
      labelConfiguration: configuration.labelConfiguration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.spacing,
        children: [
          ColorWidgetShowcaseOption(
            labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(
              label: 'Idle color',
            ),
            onChanged: configuration.idleColorOnChanged,
          ),
          ColorWidgetShowcaseOption(
            labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(
              label: 'Hover color',
            ),
            onChanged: configuration.hoverColorOnChanged,
          ),
          ColorWidgetShowcaseOption(
            labelConfiguration: const WidgetShowcaseOptionLabelConfiguration(
              label: 'Tap color',
            ),
            onChanged: configuration.tapColorOnChanged,
          ),
        ],
      ),
    );
  }
}
