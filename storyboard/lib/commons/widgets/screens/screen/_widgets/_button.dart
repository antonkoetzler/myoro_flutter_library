part of '../storyboard_screen.dart';

/// Generic button of [StoryboardScreen].
final class _Button extends StatelessWidget {
  final IconData _icon;
  final VoidCallback _onTapUp;

  const _Button(this._icon, this._onTapUp);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => _onTapUp()),
        iconConfiguration: MyoroIconTextButtonIconConfiguration(icon: _icon),
        padding: themeExtension.buttonPadding,
      ),
    );
  }
}
