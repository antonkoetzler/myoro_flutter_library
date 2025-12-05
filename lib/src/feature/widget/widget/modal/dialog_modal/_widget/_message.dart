part of '../widget/myoro_dialog_modal.dart';

/// Dialog text of [MyoroDialogModal].
final class _Message<T> extends StatelessWidget {
  /// Default constructor.
  const _Message(this._message, this._builder, this._request);

  /// Message of [MyoroDialogModal].
  final String _message;

  /// Builder of [MyoroDialogModal].
  final MyoroDialogModalBuilder<T>? _builder;

  /// Request of [MyoroDialogModal].
  final MyoroRequest<T> _request;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDialogModalThemeExtension>();
    final style = context.watch<MyoroDialogModalStyle>();
    final messageChildSpacing = style.messageChildSpacing ?? themeExtension.messageChildSpacing ?? 0;
    final messageTextStyle = style.messageTextStyle ?? themeExtension.messageTextStyle;

    return Column(
      spacing: messageChildSpacing,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_message.isNotEmpty) Text(_message, style: messageTextStyle),
        if (_builder != null) Flexible(child: _builder(context, _request)),
      ],
    );
  }
}
