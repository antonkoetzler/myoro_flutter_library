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

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        onTapUp: (_) => context.closeSnackBar(),
        iconConfiguration: closeButtonIconConfiguration,
      ),
      style: const MyoroIconTextButtonStyle().copyWith(
        borderWidth: kMyoroBorderWidth,
        borderIdleColor: getColor(context),
        borderHoverColor: getColor(context),
        borderTapColor: getColor(context),
        contentIdleColor: style.primaryColor ?? snackBarThemeExtension.primaryColor,
      ),
    );
  }
}
