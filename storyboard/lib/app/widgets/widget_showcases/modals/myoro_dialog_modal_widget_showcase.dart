import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroDialogModal].
final class MyoroDialogModalWidgetShowcase extends StatelessWidget {
  const MyoroDialogModalWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const WidgetShowcase(widget: _Widget());
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
        onPressed: () => MyoroDialogModal.show(
          context,
          child: const Text(
            'Bing bong',
            style: TextStyle(
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
