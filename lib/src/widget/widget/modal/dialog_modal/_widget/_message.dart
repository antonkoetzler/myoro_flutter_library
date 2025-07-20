part of '../myoro_dialog_modal.dart';

/// Dialog text of [MyoroDialogModal].
final class _Message extends StatelessWidget {
  final MyoroDialogModalConfiguration _configuration;

  const _Message(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDialogModalThemeExtension>();

    if (_configuration.text.isNotEmpty) {
      return Text(_configuration.text, style: _configuration.textStyle ?? themeExtension.textStyle);
    } else {
      return _configuration.child!;
    }
  }
}
