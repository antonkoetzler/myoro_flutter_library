part of '../myoro_snack_bar.dart';

/// Close button of the [MyoroSnackBar].
final class _CloseButton extends StatelessWidget {
  const _CloseButton(this._snackBarType);

  final MyoroSnackBarTypeEnum _snackBarType;

  @override
  Widget build(context) {
    final snackBarThemeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();
    final style = context.watch<MyoroSnackBarStyle>();
    final closeButtonIcon = style.closeButtonIcon ?? snackBarThemeExtension.closeButtonIcon;
    final closeButtonIconSize = style.closeButtonIconSize ?? snackBarThemeExtension.closeButtonIconSize;

    final getColor = _snackBarType.getColor;
    final color = getColor(context);

    return MyoroIconTextButton(
      style: MyoroIconTextButtonStyle(
        iconSize: closeButtonIconSize,
        borderWidth: kMyoroBorderWidth,
        borderIdleColor: color,
        borderHoverColor: color,
        borderTapColor: color,
        contentIdleColor: color,
      ),
      onTapUp: (_, _) => context.closeSnackBar(),
      icon: closeButtonIcon,
    );
  }
}
