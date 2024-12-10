import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroTooltip].
final class MyoroTooltipWidgetShowcase extends StatelessWidget {
  const MyoroTooltipWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(
      widget: _Widget(),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension>();

    return MyoroTooltip(
      text: 'Hello, World!',
      margin: themeExtension.tooltipMargin,

      // TODO: Replace with [MyoroCard].
      child: Container(
        width: themeExtension.containerSize.width,
        height: themeExtension.containerSize.height,
        decoration: BoxDecoration(
          color: MyoroColorTheme.primary(context),
          border: MyoroDecorationHelper.border(context),
          borderRadius: MyoroDecorationHelper.borderRadius,
        ),
        child: Center(
          child: Text(
            'Hover over this box!',
            style: themeExtension.containerTextStyle,
          ),
        ),
      ),
    );
  }
}
