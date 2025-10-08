import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Root [Widget] of the storyboard.
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
            title: 'MFL Storyboard',
            themeMode: themeMode,
            themeExtensionsBuilder: createStoryboardThemeExtensions,
            router: router,
          ),
        );
      },
    );
  }
}
