import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widgets/_barrier.dart';
part '_widgets/_close_button.dart';
part '_widgets/_drawer.dart';
part '_widgets/_title.dart';

/// Base drawer.
class MyoroDrawer extends StatelessWidget {
  /// Configuration.
  final MyoroDrawerConfiguration configuration;

  const MyoroDrawer({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final bool isEndDrawer = context.read<MyoroDrawerController>().state.isEndDrawer;

    return Stack(
      children: [
        _Barrier(configuration),
        Row(
          mainAxisAlignment: !isEndDrawer ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            if (configuration.showCloseButton && isEndDrawer) _CloseButton(isEndDrawer),
            _Drawer(configuration),
            if (configuration.showCloseButton && !isEndDrawer) _CloseButton(isEndDrawer),
          ],
        ),
      ],
    );
  }
}
