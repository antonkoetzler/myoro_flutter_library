part of '../storyboard_screen.dart';

/// Title of the [StoryboardScreen].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final viewModel = context.read<StoryboardScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();
    return Text(
      viewModel.configuration.title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: themeExtension.titleTextStyle,
    );
  }
}
