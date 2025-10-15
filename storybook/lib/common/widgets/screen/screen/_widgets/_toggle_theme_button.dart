part of '../storybook_screen.dart';

/// Button that executes [ThemeModeController.toggle].
final class _ToggleThemeButton extends StatelessWidget {
  const _ToggleThemeButton();

  @override
  Widget build(context) {
    final viewModel = context.read<StorybookScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<StorybookScreenThemeExtension>();
    return _Button(themeExtension.toggleThemeButtonIcon, viewModel.toggleThemeButtonOnTapUp);
  }
}
