import 'package:kiwi/kiwi.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [StoryboardScreen].
final class StoryboardScreenViewModel {
  StoryboardScreenViewModel(this.configuration);

  /// [ThemeModeController] of the application.
  final _themeModeController = KiwiContainer().resolve<ThemeModeController>();

  /// Configuration.
  final StoryboardScreenConfiguration configuration;

  /// On tap up action of the button that toggles the [ThemeMode] of the app in [StoryboardScreen].
  Future<void> toggleThemeButtonOnTapUp() async {
    await _themeModeController.toggle();
  }
}
