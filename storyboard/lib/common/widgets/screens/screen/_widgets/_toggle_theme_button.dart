part of '../storyboard_screen.dart';

/// Button that executes [ThemeModeController.toggle].
final class _ToggleThemeButton extends StatelessWidget {
  const _ToggleThemeButton();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<StoryboardScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();
    return _Button(themeExtension.toggleThemeButtonIcon, viewModel.toggleThemeButtonOnTapUp);
  }
}
