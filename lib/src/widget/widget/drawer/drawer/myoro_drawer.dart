import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_barrier.dart';
part '_widget/_close_button.dart';
part '_widget/_drawer.dart';
part '_widget/_title.dart';

/// Base drawer.
class MyoroDrawer extends MyoroStatelessWidget {
  /// Configuration.
  final MyoroDrawerConfiguration configuration;

  const MyoroDrawer({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final bool isEndDrawer = context.read<MyoroDrawerController>().isEndDrawer;

    return Stack(
      children: [
        _Barrier(configuration),
        Row(
          mainAxisAlignment: !isEndDrawer ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            if (configuration.showCloseButton && isEndDrawer) const _CloseButton(),
            _Drawer(configuration),
            if (configuration.showCloseButton && !isEndDrawer) const _CloseButton(),
          ],
        ),
      ],
    );
  }
}
