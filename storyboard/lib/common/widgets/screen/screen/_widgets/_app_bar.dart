part of '../storyboard_screen.dart';

/// App bar of [StoryboardScreen].
final class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 15);

  @override
  Widget build(context) {
    final viewModel = context.read<StoryboardScreenViewModel>();
    final configuration = viewModel.configuration;
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
                children: [
                  if (configuration.onPrevious != null) const _PreviousPageButton(),
                  const Expanded(child: _Title()),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: themeExtension.spacing / 2,
              children: [...configuration.extraActionWidgets, const _ToggleThemeButton()],
            ),
          ],
        ),
      ),
    );
  }
}
