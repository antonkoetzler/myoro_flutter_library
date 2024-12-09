import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroDrawer].
final class MyoroDrawerWidgetShowcase extends StatelessWidget {
  const MyoroDrawerWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(
      widget: _Widget(),
      widgetOptions: _WidgetOptions(),
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        text: 'Click to launch the drawer.',
        bordered: true,
        onPressed: () => context.openDrawer(
          isEndDrawer: false,
          drawer: MyoroDrawer(
            title: 'Hello',
            child: Container(
              width: 100,
              color: MyoroColorTheme.secondary(context),
            ),
          ),
        ),
      ),
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) => const Text('TODO'); // TODO
}
