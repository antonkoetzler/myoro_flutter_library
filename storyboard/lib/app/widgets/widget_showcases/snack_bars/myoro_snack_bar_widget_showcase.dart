import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroSnackBar].
final class MyoroSnackBarWidgetShowcase extends StatelessWidget {
  const MyoroSnackBarWidgetShowcase({super.key});

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
        text: 'Click to launch the snack bar.',
        bordered: true,
        onPressed: () => context.showSnackBar(
          snackBar: const MyoroSnackBar(
            snackBarType: MyoroSnackBarTypeEnum.success,
            message: 'Now do color enum',
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
