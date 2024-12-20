import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget showcase for [MyoroSnackBar].
final class MyoroSnackBarWidgetShowcase extends StatelessWidget {
  const MyoroSnackBarWidgetShowcase({super.key});

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
        text: 'Click to launch the snack bar.',
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
