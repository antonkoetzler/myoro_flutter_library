part of '../myoro_icon_text_button.dart';

/// UI of the [MyoroIconTextButton].
final class _Button extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroIconTextButtonConfiguration _configuration;

  const _Button(this._tapStatusEnum, this._configuration);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();

    final invert = _configuration.invert;
    final contentColorBuilder = _configuration.contentColorBuilder;
    final iconConfiguration = _configuration.iconConfiguration;
    final textConfiguration = _configuration.textConfiguration;
    final iconConfigurationNotNull = iconConfiguration != null;
    final textConfigurationNotNull = textConfiguration != null;
    final iconConfigurationAndTextConfigurationNotNull = iconConfigurationNotNull && textConfigurationNotNull;

    final iconWidget = iconConfigurationNotNull ? _Icon(_tapStatusEnum, contentColorBuilder, iconConfiguration) : null;
    final textWidget = textConfigurationNotNull ? _Text(_tapStatusEnum, contentColorBuilder, textConfiguration) : null;

    final padding = _configuration.padding ?? themeExtension.contentPadding ?? EdgeInsets.zero;
    final spacing = _configuration.spacing ?? themeExtension.spacing ?? 0;

    return Padding(
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: spacing,
        children: iconConfigurationAndTextConfigurationNotNull
            ? [!invert ? iconWidget! : textWidget!, !invert ? textWidget! : iconWidget!]
            : [if (iconConfigurationNotNull) iconWidget!, if (textConfigurationNotNull) textWidget!],
      ),
    );
  }
}
