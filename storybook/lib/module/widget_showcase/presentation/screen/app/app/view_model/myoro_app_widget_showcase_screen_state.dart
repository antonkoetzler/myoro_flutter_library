part of 'myoro_app_widget_showcase_screen_view_model.dart';

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
