import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase of [MyoroLayoutBuilder].
final class MyoroLayoutBuilderWidgetShowcase extends StatelessWidget {
  const MyoroLayoutBuilderWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetShowcase(widget: const _Widget(), widgetOptionsBuilder: _widgetOptionsBuilder);
  }

  List<Widget> _widgetOptionsBuilder() {
    return const [_Description()];
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final textStyle =
        context.resolveThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension>().textStyle;

    return MyoroLayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Width constraints: ${constraints.minWidth} <= w <= ${constraints.maxWidth}.',
              style: textStyle,
            ),
            Text(
              'Height constraints: ${constraints.minHeight} <= h <= ${constraints.maxHeight}.',
              style: textStyle,
            ),
          ],
        );
      },
    );
  }
}

final class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension>();

    return SizedBox(
      width: themeExtension.descriptionWidth,
      child: Text(
        'A replacement for Flutter\'s [LayoutBuilder]. [MyoroLayoutBuilder] '
        'allows the developer to use [IntrinsicWidth] within the scope of, in '
        'this case, [MyoroLayoutBuilder].',
        style: themeExtension.textStyle,
      ),
    );
  }
}
