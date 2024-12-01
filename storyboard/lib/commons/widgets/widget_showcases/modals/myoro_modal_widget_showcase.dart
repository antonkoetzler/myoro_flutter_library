import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroModal].
final class MyoroModalWidgetShowcase extends StatelessWidget {
  const MyoroModalWidgetShowcase({super.key});

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
        text: 'Click to launch the modal.',
        bordered: true,
        onPressed: () => MyoroModal.show(
          context,
          configuration: const MyoroModalConfiguration(
            title: 'hello',
            showCloseButton: true,
          ),
          child: const SizedBox.shrink(),
        ),
      ),
    );
  }
}

final class _WidgetOptions extends StatelessWidget {
  const _WidgetOptions();

  @override
  Widget build(BuildContext context) => const Text('TODO');
}
