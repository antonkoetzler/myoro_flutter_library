part of '../widget/myoro_icon_text_button.dart';

/// UI of the [MyoroIconTextButton].
final class _Button extends StatelessWidget {
  const _Button(this._tapStatusEnum, this._invert, this._iconConfiguration, this._textConfiguration);

  final MyoroTapStatusEnum _tapStatusEnum;
  final bool _invert;
  final MyoroIconConfiguration? _iconConfiguration;
  final MyoroTextConfiguration? _textConfiguration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final style = context.watch<MyoroIconTextButtonStyle>();
    final contentPadding = style.contentPadding ?? themeExtension.contentPadding ?? EdgeInsets.zero;
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    final iconConfigurationNotNull = _iconConfiguration != null;
    final textConfigurationNotNull = _textConfiguration != null;
    final iconConfigurationAndTextConfigurationNotNull = iconConfigurationNotNull && textConfigurationNotNull;

    final iconWidget = iconConfigurationNotNull ? _Icon(_tapStatusEnum, _iconConfiguration) : null;
    final textWidget = textConfigurationNotNull ? _Text(_tapStatusEnum, _textConfiguration) : null;

    return Padding(
      padding: contentPadding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: spacing,
        children: iconConfigurationAndTextConfigurationNotNull
            ? [!_invert ? iconWidget! : textWidget!, !_invert ? textWidget! : iconWidget!]
            : [if (iconConfigurationNotNull) iconWidget!, if (textConfigurationNotNull) textWidget!],
      ),
    );
  }
}
