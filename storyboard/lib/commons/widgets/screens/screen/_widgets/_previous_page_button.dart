part of '../storyboard_screen.dart';

/// Previous page button of [StoryboardScreen].
final class _PreviousPageButton extends StatelessWidget {
  const _PreviousPageButton();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<StoryboardScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();

    assert(
      viewModel.configuration.onPrevious != null,
      '[_PreviousPageButton]: [viewModel.configuration.onPrevious] cannot be null.',
    );

    return _Button(themeExtension.previousPageButtonIcon, viewModel.configuration.onPrevious!);
  }
}
