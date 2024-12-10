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
    );
  }
}

final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: MyoroIconTextHoverButton(
        configuration: const MyoroHoverButtonConfiguration(bordered: true),
        text: 'Click to launch the modal.',
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
