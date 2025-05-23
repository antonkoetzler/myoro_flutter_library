part of '../myoro_input.dart';

/// Button that clears all text of the [MyoroInput].
final class _ClearTextButton extends StatelessWidget {
  final MyoroInputController _controller;

  const _ClearTextButton(this._controller);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return IntrinsicWidth(
      child: Padding(
        padding: themeExtension.clearTextButtonPadding,
        child: MyoroIconTextButton(
          configuration: MyoroIconTextButtonConfiguration(
            buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => _controller.clearText()),
            iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: themeExtension.clearTextButtonIcon),
          ),
        ),
      ),
    );
  }
}
