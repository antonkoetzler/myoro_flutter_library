import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Cubit to manage the [ThemeMode] of the app.
final class ThemeModeCubit extends Cubit<ThemeMode> {
  ThemeModeCubit(bool darkModeEnabled) : super(darkModeEnabled ? ThemeMode.dark : ThemeMode.light);

  void toggle() async {
    await MyoroSharedPreferences.instance.setBool(
      kSharedPreferencesDarkModeEnabledJsonKey,
      state == ThemeMode.dark ? false : true,
    );
    emit(state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
  }
}
