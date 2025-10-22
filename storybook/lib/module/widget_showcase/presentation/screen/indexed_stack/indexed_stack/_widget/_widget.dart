part of '../myoro_indexed_stack_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroIndexedStackWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final indexController = context.read<ValueNotifier<int>>();

    const children = [_Image(kAreYouSillyCat), _Image(kSnazzyCat), _Image(kHappyCat)];

    return ValueListenableBuilder(
      valueListenable: indexController,
      builder: (_, index, _) {
        return Stack(
          children: [
            MyoroIndexedStack(index: index, children: children),
            Positioned(
              top: 0,
              left: 0,
              child: _Button('Previous index', index != 0 ? () => indexController.value = index - 1 : null),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: _Button(
                'Next index',
                index != children.length - 1 ? () => indexController.value = index + 1 : null,
              ),
            ),
          ],
        );
      },
    );
  }
}
