part of '../myoro_table.dart';

/// Dialog when an error was encountered loading the rows of a [MyoroTable].
final class _ErrorMessage extends StatelessWidget {
  /// Default constructor.
  const _ErrorMessage(this._error);

  /// Error object.
  final Object? _error;

  /// Builds the widget.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTableThemeExtension>();
    return Text(_error.toString(), style: themeExtension.errorMessageTextStyle);
  }
}
