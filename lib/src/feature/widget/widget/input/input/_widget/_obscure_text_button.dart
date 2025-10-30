part of '../widget/myoro_input.dart';

/// Toggle hidden button of [MyoroInput] for when [MyoroInputConfiguration.obscureText] is true.
final class _ObscureTextButton extends StatelessWidget {
  const _ObscureTextButton(this._obscureText);

  final bool _obscureText;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.watch<MyoroInputStyle>();
    final obscureTextButtonEnabledIcon =
        style.obscureTextButtonEnabledIcon ?? themeExtension.obscureTextButtonEnabledIcon!;
    final obscureTextButtonDisabledIcon =
        style.obscureTextButtonDisabledIcon ?? themeExtension.obscureTextButtonDisabledIcon!;

    final viewModel = context.read<MyoroInputViewModel>();
    final obscureText = viewModel.obscureText;

    return _SuffixButton(_obscureText ? obscureTextButtonEnabledIcon : obscureTextButtonDisabledIcon, obscureText);
  }
}
