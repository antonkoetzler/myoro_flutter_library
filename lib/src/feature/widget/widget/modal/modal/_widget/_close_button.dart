part of '../myoro_modal.dart';

/// Close button of the [MyoroModal].
final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final style = context.watch<MyoroModalStyle>();
    final closeButtonPadding = style.closeButtonPadding ?? themeExtension.closeButtonPadding ?? EdgeInsets.zero;
    final closeButtonIcon = style.closeButtonIcon ?? themeExtension.closeButtonIcon;
    final closeButtonIconSize = style.closeButtonIconSize ?? themeExtension.closeButtonIconSize;

    return Padding(
      padding: closeButtonPadding,
      child: MyoroIconTextButton(
        style: MyoroIconTextButtonStyle(iconSize: closeButtonIconSize),
        onTapUp: (_, _) => context.navigator.pop(),
        icon: closeButtonIcon,
      ),
    );
  }
}
