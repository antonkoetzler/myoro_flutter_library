part of '../storybook_screen.dart';

/// Title of the [StorybookScreen].
final class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(context) {
    final viewModel = context.read<StorybookScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<StorybookScreenThemeExtension>();
    return Text(
      viewModel.configuration.title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: themeExtension.titleTextStyle,
    );
  }
}
