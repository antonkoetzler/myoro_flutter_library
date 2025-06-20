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
    }

    if (_configuration.child != null) {
      return _configuration.child!;
    }

    throw AssertionError('[MyoroDialogModal._Message.build]: [_text] (x)or [_child] must always not be null');
  }
}
