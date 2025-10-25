part of '../myoro_snack_bar.dart';

/// Close button of the [MyoroSnackBar].
final class _CloseButton extends StatelessWidget {
  const _CloseButton(this._snackBarType);

  final MyoroSnackBarTypeEnum _snackBarType;

  @override
  Widget build(context) {
    final snackBarThemeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();
    final style = context.watch<MyoroSnackBarStyle>();
    final closeButtonIconConfiguration =
        style.closeButtonIconConfiguration ?? snackBarThemeExtension.closeButtonIconConfiguration;

    final getColor = _snackBarType.getColor;
    final color = getColor(context);

    return MyoroIconTextButton(
      onTapUp: (_) => context.closeSnackBar(),
      iconConfiguration: closeButtonIconConfiguration,
      style: const MyoroIconTextButtonStyle().copyWith(
        borderWidth: kMyoroBorderWidth,
        borderIdleColor: color,
        borderHoverColor: color,
        borderTapColor: color,
        contentIdleColor: color,
      ),
    );
  }
}
