part of '../myoro_snack_bar.dart';

/// Close button of the [MyoroSnackBar].
final class _CloseButton extends StatelessWidget {
  const _CloseButton(this._snackBarType);

  final MyoroSnackBarTypeEnum _snackBarType;

  @override
  Widget build(context) {
    final snackBarThemeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();
    final closeButtonIconConfiguration = snackBarThemeExtension.closeButtonIconConfiguration;

    final iconTextButtonThemeExtension = MyoroIconTextButtonThemeExtension.fromVariant(
      MyoroButtonPrimaryVariantThemeExtension.builder(context.isDarkMode, context.colorScheme),
    );

    final getColor = _snackBarType.getColor;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        onTapUp: (_) => context.closeSnackBar(),
        iconConfiguration: closeButtonIconConfiguration,
      ),
      themeExtension: iconTextButtonThemeExtension.copyWith(
        contentColor: snackBarThemeExtension.primaryColor,
        borderColor: getColor(context),
        borderWidth: kMyoroBorderWidth,
      ),
    );
  }
}
