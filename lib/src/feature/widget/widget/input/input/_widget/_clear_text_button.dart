part of '../myoro_input.dart';

/// Button that clears all text of the [MyoroInput].
final class _ClearTextButton extends StatelessWidget {
  const _ClearTextButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.read<MyoroInputStyle>();
    final clearTextButtonPadding =
        style.clearTextButtonPadding ?? themeExtension.clearTextButtonPadding ?? EdgeInsets.zero;
    final clearTextButtonIcon = style.clearTextButtonIcon ?? themeExtension.clearTextButtonIcon!;
    final clearTextButtonIconSize = style.clearTextButtonIconSize ?? themeExtension.clearTextButtonIconSize;

    final viewModel = context.read<MyoroInputViewModel>();
    final clearText = viewModel.clearText;
    final state = viewModel.state;
    final configuration = state.configuration;
    final clearTextButtonKey = configuration.clearTextButtonKey;

    return IntrinsicWidth(
      child: Padding(
        padding: clearTextButtonPadding,
        child: ColoredBox(
          color: Colors.cyan.withOpacity(0.3),
          child: MyoroIconTextButton(
            key: clearTextButtonKey,
            configuration: MyoroIconTextButtonConfiguration(
              onTapUp: (_) => clearText(),
              iconConfiguration: MyoroIconConfiguration(icon: clearTextButtonIcon, size: clearTextButtonIconSize),
            ),
          ),
        ),
      ),
    );
  }
}
