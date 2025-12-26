part of '../widget/myoro_icon_text_button.dart';

/// UI of the [MyoroIconTextButton].
final class _Button extends StatelessWidget {
  const _Button(this._tapStatusEnum, this._invert, this._icon, this._text);

  final MyoroTapStatusEnum _tapStatusEnum;
  final bool _invert;
  final IconData? _icon;
  final String _text;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final style = context.watch<MyoroIconTextButtonStyle>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    final iconNotNull = _icon != null;
    final textNotEmpty = _text.isNotEmpty;
    final iconAndTextNotEmpty = iconNotNull && textNotEmpty;

    final iconWidget = iconNotNull ? _Icon(_tapStatusEnum, _icon) : null;
    final textWidget = textNotEmpty ? _Text(_text, _tapStatusEnum) : null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: spacing,
      children: iconAndTextNotEmpty
          ? [!_invert ? iconWidget! : textWidget!, !_invert ? textWidget! : iconWidget!]
          : [if (iconNotNull) iconWidget!, if (textNotEmpty) textWidget!],
    );
  }
}
