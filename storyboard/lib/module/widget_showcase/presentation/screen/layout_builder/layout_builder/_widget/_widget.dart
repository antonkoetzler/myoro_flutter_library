part of '../myoro_layout_builder_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroLayoutBuilderWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return MyoroLayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: widgetShowcaseOptionThemeExtension.spacing,
          children: [
            const _Title(),
            Row(
              children: [
                Expanded(
                  child: _Pair(
                    minString: 'Minimum width: ${constraints.minWidth}',
                    maxString: 'Maximum width: ${constraints.maxWidth}',
                  ),
                ),
                Expanded(
                  child: _Pair(
                    minString: 'Minimum height: ${constraints.minHeight}',
                    maxString: 'Maximum height: ${constraints.maxHeight}',
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
