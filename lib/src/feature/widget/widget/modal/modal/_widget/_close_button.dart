part of '../myoro_modal.dart';

/// Close button of the [MyoroModal].
final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final style = context.read<MyoroModalStyle>();
    final closeButtonPadding =
        style.closeButtonPadding ?? themeExtension.closeButtonPadding ?? EdgeInsets.zero;

    return Padding(
      padding: closeButtonPadding,
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          onTapUp: (_) => context.navigator.pop(),
          iconConfiguration:
              style.closeButtonIconConfiguration ?? themeExtension.closeButtonIconConfiguration,
        ),
      ),
    );
  }
}
