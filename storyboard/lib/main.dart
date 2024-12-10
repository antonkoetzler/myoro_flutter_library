import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_manager/window_manager.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Window constraints initialization.
  windowManager.ensureInitialized();
  windowManager.setMinimumSize(const Size(1000, 1000));

  // Shared preferences initialization (to save theme state).
  final instance = await MyoroSharedPreferences.initialize();
  if (instance.getBool(kSharedPreferencesDarkModeEnabledJsonKey) == null) {
    instance.setBool(kSharedPreferencesDarkModeEnabledJsonKey, true);
  }

  runApp(
    BlocProvider(
      create: (_) => WidgetShowcaseBloc(),
      child: _App(
        MyoroSharedPreferences.instance.getBool(kSharedPreferencesDarkModeEnabledJsonKey)!,
      ),
    ),
  );
}

final class _App extends StatelessWidget {
  final bool _darkModeEnabled;

  const _App(this._darkModeEnabled);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeModeCubit(_darkModeEnabled),
      child: BlocBuilder<ThemeModeCubit, ThemeMode>(
        builder: (_, ThemeMode themeMode) {
          return MyoroMaterialApp(
            title: 'myoro_flutter_library storyboard',
            themeMode: themeMode,
            themeExtensionsBuilder: createStoryboardThemeExtensions,
            home: const MyoroScreen(
              appBar: StoryboardAppBar(),
              body: StoryboardBody(),
            ),
          );
        },
      ),
    );
  }
}
