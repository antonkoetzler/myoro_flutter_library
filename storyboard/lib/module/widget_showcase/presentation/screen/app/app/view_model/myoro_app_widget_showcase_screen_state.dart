import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroAppWidgetShowcaseScreenViewModel].
final class MyoroAppWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroAppConfiguration.themeMode]
  ThemeMode _themeMode = KiwiContainer().resolve<ThemeModeController>().themeMode;
  ThemeMode get themeMode => _themeMode;
  set themeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
