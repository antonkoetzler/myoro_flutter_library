part of '../storybook_screen.dart';

/// Generic button of [StorybookScreen].
final class _Button extends StatelessWidget {
  final IconData _icon;
  final VoidCallback _onTapUp;

  const _Button(this._icon, this._onTapUp);

  @override
  Widget build(context) {
    final screenThemeExtension = context.resolveThemeExtension<StorybookScreenThemeExtension>();
    final buttonPadding = screenThemeExtension.buttonPadding;
    return MyoroIconTextButton(
      style: const MyoroIconTextButtonStyle().copyWith(contentPadding: buttonPadding),
      onTapUp: (_, _) => _onTapUp(),
      icon: _icon,
    );
  }
}
