import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroAppWidgetShowcase].
final class MyoroAppWidgetShowcaseViewModel extends ChangeNotifier {
  MyoroAppWidgetShowcaseViewModel();

  /// [MyoroAppConfiguration.themeMode]
  ThemeMode _themeMode = KiwiContainer().resolve<ThemeModeController>().themeMode;
  ThemeMode get themeMode => _themeMode;
  set themeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
