part of '../myoro_snack_bar.dart';

/// Message of the [MyoroSnackBar].
final class _Message extends StatelessWidget {
  final String _message;

  const _Message(this._message);

  @override
  Widget build(BuildContext context) {
    return Text(_message, style: context.resolveThemeExtension<MyoroSnackBarThemeExtension>().messageTextStyle);
  }
}
