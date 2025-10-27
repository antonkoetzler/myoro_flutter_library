part of '../widget/myoro_dialog_modal.dart';

/// Dialog text of [MyoroDialogModal].
final class _Message extends StatelessWidget {
  const _Message(this._text, this._child);

  final String _text;
  final Widget? _child;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDialogModalThemeExtension>();
    final style = context.watch<MyoroDialogModalStyle>();
    final textStyle = style.textStyle ?? themeExtension.textStyle;
    return _text.isNotEmpty ? Text(_text, style: textStyle) : _child!;
  }
}
