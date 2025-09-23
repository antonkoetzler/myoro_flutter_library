part of '../myoro_dialog_modal.dart';

/// Dialog text of [MyoroDialogModal].
final class _Message extends StatelessWidget {
  final MyoroDialogModalConfiguration _configuration;

  const _Message(this._configuration);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDialogModalThemeExtension>();
    final textStyle = themeExtension.textStyle;
    return _configuration.text.isNotEmpty ? Text(_configuration.text, style: textStyle) : _configuration.child!;
  }
}
