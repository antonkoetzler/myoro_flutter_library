import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storybook/storybook.dart';

part '_widget/_icon_dropdown.dart';
part '_widget/_icon_size_input.dart';
part '_widget/_title.dart';

/// Widget showcase option for choosing an [IconData] and it's size.
final class IconWidgetShowcaseOption extends StatelessWidget {
  const IconWidgetShowcaseOption({super.key, required this.configuration});

  /// Configuration.
  final IconWidgetShowcaseOptionConfiguration configuration;

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return InheritedProvider(
      create: (_) => IconWidgetShowcaseOptionViewModel(configuration),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: widgetShowcaseThemeExtension.spacing,
        children: [
          const _Title(),
          Row(
            spacing: widgetShowcaseThemeExtension.spacing,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(child: _IconDropdown()),
              Expanded(child: _IconSizeInput()),
            ],
          ),
        ],
      ),
    );
  }
}
