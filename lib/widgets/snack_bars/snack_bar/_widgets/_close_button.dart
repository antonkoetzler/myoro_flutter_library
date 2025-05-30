part of '../myoro_snack_bar.dart';

/// Close button of the [MyoroSnackBar].
final class _CloseButton extends StatelessWidget {
  const _CloseButton();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => context.hideSnackBar()),
        iconConfiguration: MyoroIconTextButtonIconConfiguration(
          icon: themeExtension.closeButtonIcon,
          size: themeExtension.closeButtonIconSize,
        ),
      ),
    );
  }
}
