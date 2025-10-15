import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storybook/storybook.dart';

/// Controller providing the current [ThemeMode] of the application.
class ThemeModeController extends ValueNotifier<ThemeMode> {
  final SharedPreferences sharedPreferences;

  ThemeModeController(bool isDarkMode, [SharedPreferences? sharedPreferences])
    : sharedPreferences = sharedPreferences ?? KiwiContainer().resolve<SharedPreferences>(),
      super(isDarkMode ? ThemeMode.dark : ThemeMode.light);

  /// Changes the [ThemeMode].
  Future<void> toggle() async {
    await sharedPreferences.setBool(
      kSharedPreferencesDarkModeEnabledJsonKey,
      themeMode == ThemeMode.dark ? false : true,
    );
    value = (themeMode == ThemeMode.dark) ? ThemeMode.light : ThemeMode.dark;
  }

  /// Alias of [value].
  ThemeMode get themeMode => value;
}
