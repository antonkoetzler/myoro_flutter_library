part of '../myoro_input.dart';

/// Button that clears all text of the [MyoroInput].
final class _ClearTextButton extends StatelessWidget {
  const _ClearTextButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.watch<MyoroInputStyle>();
    final clearTextButtonIcon = style.clearTextButtonIcon ?? themeExtension.clearTextButtonIcon!;

    final viewModel = context.read<MyoroInputViewModel>();
    final clearText = viewModel.clearText;

    return _SuffixButton(clearTextButtonIcon, clearText);
  }
}
