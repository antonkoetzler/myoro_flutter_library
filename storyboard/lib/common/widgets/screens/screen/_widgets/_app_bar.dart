part of '../storyboard_screen.dart';

/// App bar of [StoryboardScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<StoryboardScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();

    return MyoroAppBar(
      configuration: MyoroAppBarConfiguration(
        bordered: true,
        child: Row(
          spacing: themeExtension.spacing,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: themeExtension.spacing / 2,
                children: [if (viewModel.configuration.onPrevious != null) const _PreviousPageButton(), const _Title()],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: themeExtension.spacing / 2,
              children: [...viewModel.configuration.extraActionWidgets, const _ToggleThemeButton()],
            ),
          ],
        ),
      ),
    );
  }
}
