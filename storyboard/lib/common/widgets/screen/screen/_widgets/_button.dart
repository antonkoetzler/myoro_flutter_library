part of '../storyboard_screen.dart';

/// Generic button of [StoryboardScreen].
final class _Button extends StatelessWidget {
  final IconData _icon;
  final VoidCallback _onTapUp;

  const _Button(this._icon, this._onTapUp);

  @override
  Widget build(context) {
    final screenThemeExtension = context.resolveThemeExtension<StoryboardScreenThemeExtension>();
    final buttonPadding = screenThemeExtension.buttonPadding;

    final iconTextButtonThemeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        onTapUp: (_) => _onTapUp(),
        iconConfiguration: MyoroIconConfiguration(icon: _icon),
      ),
      themeExtension: iconTextButtonThemeExtension.copyWith(contentPadding: buttonPadding),
    );
  }
}
