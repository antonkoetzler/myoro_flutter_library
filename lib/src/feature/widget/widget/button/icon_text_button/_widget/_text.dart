part of '../widget/myoro_icon_text_button.dart';

/// Text of the [MyoroIconTextButton].
final class _Text extends StatelessWidget {
  /// Default constructor.
  const _Text(this._text, this._tapStatusEnum);

  /// Text.
  final String _text;

  /// Tap status.
  final MyoroTapStatusEnum _tapStatusEnum;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final style = context.watch<MyoroIconTextButtonStyle>();
    final contentColor =
        style.contentColorBuilder(_tapStatusEnum) ?? themeExtension.contentColorBuilder(_tapStatusEnum);
    final textConstraints = style.textConstraints ?? themeExtension.textConstraints ?? const BoxConstraints();
    var textStyle = style.textStyle ?? themeExtension.textStyle;
    textStyle = (textStyle ?? const MyoroTextStyle()).copyWith(
      style: contentColor != null ? (textStyle?.style ?? const TextStyle()).withColor(contentColor) : textStyle?.style,
    );

    return Flexible(
      child: IntrinsicHeight(
        child: ConstrainedBox(
          constraints: textConstraints,
          child: MyoroText(_text, style: textStyle),
        ),
      ),
    );
  }
}
