import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_barrier.dart';
part '_widget/_close_button.dart';
part '_widget/_drawer.dart';
part '_widget/_title.dart';

/// Base drawer.
class MyoroDrawer extends StatelessWidget {
  const MyoroDrawer({super.key, required this.configuration, this.themeExtension});

  /// Configuration.
  final MyoroDrawerConfiguration configuration;

  /// Style.
  final MyoroDrawerThemeExtension? themeExtension;

  @override
  Widget build(context) {
    final isEndDrawerNotifier = context.read<MyoroDrawerController>().isEndDrawerNotifier;
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final themeExtension = this.themeExtension ?? MyoroDrawerThemeExtension.builder(colorScheme, textTheme);

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: InheritedProvider.value(
        value: configuration,
        child: Stack(
          children: [
            _Barrier(configuration),
            ValueListenableBuilder(
              valueListenable: isEndDrawerNotifier,
              builder: (_, isEndDrawer, _) {
                return Row(
                  mainAxisAlignment: !isEndDrawer ? MainAxisAlignment.start : MainAxisAlignment.end,
                  children: [
                    if (configuration.showCloseButton && isEndDrawer) const _CloseButton(),
                    const _Drawer(),
                    if (configuration.showCloseButton && !isEndDrawer) const _CloseButton(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
