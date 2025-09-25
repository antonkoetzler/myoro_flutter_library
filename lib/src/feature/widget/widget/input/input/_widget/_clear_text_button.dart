part of '../myoro_input.dart';

/// Button that clears all text of the [MyoroInput].
final class _ClearTextButton extends StatelessWidget {
  final MyoroInputViewModel _viewModel;

  const _ClearTextButton(this._viewModel);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.read<MyoroInputStyle>();
    final clearTextButtonPadding =
        style.clearTextButtonPadding ?? themeExtension.clearTextButtonPadding ?? EdgeInsets.zero;
    final clearTextButtonIcon = style.clearTextButtonIcon ?? themeExtension.clearTextButtonIcon!;
    final clearTextButtonIconSize = style.clearTextButtonIconSize ?? themeExtension.clearTextButtonIconSize;

    return IntrinsicWidth(
      child: Padding(
        padding: clearTextButtonPadding,
        child: MyoroIconTextButton(
          configuration: MyoroIconTextButtonConfiguration(
            onTapUp: (_) => _viewModel.clearText(),
            iconConfiguration: MyoroIconConfiguration(icon: clearTextButtonIcon, size: clearTextButtonIconSize),
          ),
        ),
      ),
    );
  }
}
