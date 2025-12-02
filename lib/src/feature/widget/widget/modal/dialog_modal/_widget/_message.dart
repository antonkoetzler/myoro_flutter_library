part of '../widget/myoro_dialog_modal.dart';

/// Dialog text of [MyoroDialogModal].
final class _Message extends StatelessWidget {
  const _Message(this._message, this._child);

  final String _message;
  final Widget? _child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDialogModalThemeExtension>();
    final style = context.watch<MyoroDialogModalStyle>();
    final messageTextStyle = style.messageTextStyle ?? themeExtension.messageTextStyle;
    return _message.isNotEmpty ? Text(_message, style: messageTextStyle) : _child!;
  }
}
