part of '../myoro_table.dart';

/// Dialog when an error was encountered loading the rows of a [MyoroTable].
final class _ErrorMessage extends StatelessWidget {
  final String _errorMessage;

  const _ErrorMessage(this._errorMessage);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    return Text(_errorMessage, style: themeExtension.errorMessageTextStyle);
  }
}
