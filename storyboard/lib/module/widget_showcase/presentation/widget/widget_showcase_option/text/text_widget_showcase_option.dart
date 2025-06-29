import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widget/_max_lines_option.dart';
part '_widget/_overflow_option.dart';
part '_widget/_style_option.dart';
part '_widget/_text_align_option.dart';
part '_widget/_text_option.dart';
part '_widget/_title.dart';

/// Widget showcase option for setting text.
final class TextWidgetShowcaseOption extends StatelessWidget {
  const TextWidgetShowcaseOption({super.key, required this.configuration});

  /// Configuration.
  final TextWidgetShowcaseOptionConfiguration configuration;

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return InheritedProvider(
      create: (_) => TextWidgetShowcaseOptionViewModel(configuration),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: widgetShowcaseThemeExtension.spacing,
        children: [
          const _Title(),
          const _TextOption(),
          Row(
            spacing: widgetShowcaseThemeExtension.spacing,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (configuration.maxLinesOnChanged != null) const Expanded(child: _MaxLinesOption()),
              if (configuration.overflowOnChanged != null) const Expanded(child: _OverflowOption()),
            ],
          ),
          Row(
            spacing: widgetShowcaseThemeExtension.spacing,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (configuration.alignmentOnChanged != null) const Expanded(child: _TextAlignOption()),
              if (configuration.styleOnChanged != null) const Expanded(child: _StyleOption()),
            ],
          ),
        ],
      ),
    );
  }
}
