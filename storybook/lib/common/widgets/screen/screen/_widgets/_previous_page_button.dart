part of '../storybook_screen.dart';

/// Previous page button of [StorybookScreen].
final class _PreviousPageButton extends StatelessWidget {
  const _PreviousPageButton();

  @override
  Widget build(context) {
    final viewModel = context.read<StorybookScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<StorybookScreenThemeExtension>();

    assert(
      viewModel.configuration.onPrevious != null,
      '[_PreviousPageButton]: [viewModel.configuration.onPrevious] cannot be null.',
    );

    return _Button(themeExtension.previousPageButtonIcon, viewModel.configuration.onPrevious!);
  }
}
