import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// Root [Widget] of the storybook.
final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(context) {
    final themeModeController = KiwiContainer().resolve<ThemeModeController>();

    return ValueListenableBuilder(
      valueListenable: themeModeController,
      builder: (_, themeMode, __) {
        return MyoroApp(
          configuration: MyoroAppConfiguration(
            title: 'MFL Storybook',
            themeMode: themeMode,
            themeExtensionsBuilder: createStorybookThemeExtensions,
            router: router,
          ),
        );
      },
    );
  }
}
