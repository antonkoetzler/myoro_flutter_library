import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_icon_dropdown.dart';
part '_widgets/_icon_size_input.dart';
part '_widgets/_title.dart';

/// Widget showcase option for choosing an [IconData] and it's size.
final class IconWidgetShowcaseOption extends StatelessWidget {
  const IconWidgetShowcaseOption({super.key, required this.configuration});

  /// Configuration.
  final IconWidgetShowcaseOptionConfiguration configuration;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<IconWidgetShowcaseOptionThemeExtension>();

    return InheritedProvider(
      create: (_) => IconWidgetShowcaseOptionViewModel(configuration),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: themeExtension.spacing,
        children: [
          const _Title(),
          Row(
            spacing: themeExtension.spacing,
            children: const [Expanded(child: _IconDropdown()), Expanded(child: _IconSizeInput())],
          ),
        ],
      ),
    );
  }
}
