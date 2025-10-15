import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storybook/storybook.dart';
import 'package:window_manager/window_manager.dart';

final _kiwiContainer = KiwiContainer();

/// Function to initialize Storybook.
Future<void> initializeStorybook() async {
  _initializeWindowManager();
  await _initializeSharedPreferences();
  await _initializeKiwi();
}

/// Initilize [windowManager].
void _initializeWindowManager() {
  if (MyoroPlatformHelper.isDesktop) {
    windowManager.ensureInitialized();
    windowManager.setMinimumSize(const Size(600, 600));
  }
}

/// Initializes [SharedPreferences].
Future<void> _initializeSharedPreferences() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  if (sharedPreferences.getBool(kSharedPreferencesDarkModeEnabledJsonKey) == null) {
    await sharedPreferences.setBool(kSharedPreferencesDarkModeEnabledJsonKey, true);
  }
}

/// Adds all containers to [_kiwiContainer].
Future<void> _initializeKiwi() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  _kiwiContainer
    ..registerSingleton<SharedPreferences>((_) => sharedPreferences)
    ..registerSingleton<ModulesController>((_) => ModulesController())
    ..registerSingleton<ThemeModeController>(
      (_) => ThemeModeController(sharedPreferences.getBool(kSharedPreferencesDarkModeEnabledJsonKey)!),
    );
}
