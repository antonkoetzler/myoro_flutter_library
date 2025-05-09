import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';

final _kiwiContainer = KiwiContainer();

/// Root [Widget] of the storyboard.
final class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final sharedPreferences = _kiwiContainer.resolve<SharedPreferences>();
    final bool darkModeEnabled = sharedPreferences.getBool(kSharedPreferencesDarkModeEnabledJsonKey)!;

    return BlocProvider(
      create: (_) => ThemeModeCubit(darkModeEnabled),
      child: BlocBuilder<ThemeModeCubit, ThemeMode>(
        builder: (BuildContext context, ThemeMode themeMode) {
          return MyoroMaterialApp(
            configuration: MyoroMaterialAppConfiguration(
              title: 'MFL Storyboard',
              themeMode: themeMode,
              themeExtensionsBuilder: createStoryboardThemeExtensions,
              router: router,
            ),
          );
        },
      ),
    );
  }
}
