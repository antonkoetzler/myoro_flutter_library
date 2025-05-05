import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';
import 'package:window_manager/window_manager.dart';

final _kiwiContainer = KiwiContainer();

/// Function to initialize Storyboard.
Future<void> initializeStoryboard() async {
  _initializeWindowManager();
  await _initializeKiwi();
  await _initializeSharedPreferences();
}

/// Initilize [windowManager].
void _initializeWindowManager() {
  windowManager.ensureInitialized();
  windowManager.setMinimumSize(const Size(1200, 1000));
}

/// Adds all containers to [_kiwiContainer].
Future<void> _initializeKiwi() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  _kiwiContainer
    ..registerSingleton<SharedPreferences>((_) => sharedPreferences)
    ..registerSingleton<ModulesController>((_) => ModulesController());
}

/// Initializes [SharedPreferences].
Future<void> _initializeSharedPreferences() async {
  final sharedPreferences = _kiwiContainer.resolve<SharedPreferences>();
  if (sharedPreferences.getBool(kSharedPreferencesDarkModeEnabledJsonKey) == null) {
    await sharedPreferences.setBool(kSharedPreferencesDarkModeEnabledJsonKey, true);
  }
}
