part of '../myoro_input.dart';

/// Button that clears all text of the [MyoroInput].
final class _ClearTextButton extends StatelessWidget {
  final MyoroInputViewModel _viewModel;

  const _ClearTextButton(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return IntrinsicWidth(
      child: Padding(
        padding: themeExtension.clearTextButtonPadding,
        child: MyoroIconTextButton(
          configuration: MyoroIconTextButtonConfiguration(
            buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => _viewModel.clearText()),
            iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: themeExtension.clearTextButtonIcon),
          ),
        ),
      ),
    );
  }
}
