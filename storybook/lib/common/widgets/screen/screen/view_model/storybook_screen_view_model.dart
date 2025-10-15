import 'package:kiwi/kiwi.dart';
import 'package:storybook/storybook.dart';

/// View model of [StorybookScreen].
final class StorybookScreenViewModel {
  StorybookScreenViewModel(this.configuration);

  /// [ThemeModeController] of the application.
  final _themeModeController = KiwiContainer().resolve<ThemeModeController>();

  /// Configuration.
  final StorybookScreenConfiguration configuration;

  /// On tap up action of the button that toggles the [ThemeMode] of the app in [StorybookScreen].
  Future<void> toggleThemeButtonOnTapUp() async {
    await _themeModeController.toggle();
  }
}
