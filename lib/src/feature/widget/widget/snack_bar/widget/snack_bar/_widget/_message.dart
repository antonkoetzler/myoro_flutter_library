part of '../myoro_snack_bar.dart';

/// Message of the [MyoroSnackBar].
final class _Message extends StatelessWidget {
  final MyoroSnackBarTypeEnum _snackBarType;
  final String _message;

  const _Message(this._snackBarType, this._message);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();
    return Text(
      _message,
      style: themeExtension.messageTextStyle?.withColor(_snackBarType.getColor(context)),
    );
  }
}
