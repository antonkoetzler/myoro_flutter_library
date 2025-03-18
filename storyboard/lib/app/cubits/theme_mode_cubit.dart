import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';

/// Cubit to manage the [ThemeMode] of the app.
final class ThemeModeCubit extends Cubit<ThemeMode> {
  final sharedPreferences = KiwiContainer().resolve<SharedPreferences>();

  ThemeModeCubit(bool darkModeEnabled)
      : super(darkModeEnabled ? ThemeMode.dark : ThemeMode.light);

  void toggle() async {
    await sharedPreferences.setBool(
      kSharedPreferencesDarkModeEnabledJsonKey,
      state == ThemeMode.dark ? false : true,
    );
    emit(state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
  }
}
