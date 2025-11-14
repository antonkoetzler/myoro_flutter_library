part of '../widget/myoro_icon_text_button.dart';

/// UI of the [MyoroIconTextButton].
final class _Button extends StatelessWidget {
  const _Button(this._tapStatusEnum, this._invert, this._iconConfiguration, this._text, this._textConfiguration);

  final MyoroTapStatusEnum _tapStatusEnum;
  final bool _invert;
  final MyoroIconConfiguration? _iconConfiguration;
  final String _text;
  final MyoroTextConfiguration? _textConfiguration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final style = context.watch<MyoroIconTextButtonStyle>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    final iconConfigurationNotNull = _iconConfiguration != null;
    final textNotEmpty = _text.isNotEmpty;
    final iconConfigurationAndTextNotEmpty = iconConfigurationNotNull && textNotEmpty;

    final iconWidget = iconConfigurationNotNull ? _Icon(_tapStatusEnum, _iconConfiguration) : null;
    final textWidget = textNotEmpty ? _Text(_text, _tapStatusEnum, _textConfiguration) : null;

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: spacing,
      children: iconConfigurationAndTextNotEmpty
          ? [!_invert ? iconWidget! : textWidget!, !_invert ? textWidget! : iconWidget!]
          : [if (iconConfigurationNotNull) iconWidget!, if (textNotEmpty) textWidget!],
    );
  }
}
