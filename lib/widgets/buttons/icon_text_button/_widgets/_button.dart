part of '../myoro_icon_text_button.dart';

/// UI of the [MyoroIconTextButton].
final class _Button extends StatelessWidget {
  final MyoroGestureStatusEnum _tapStatusEnum;
  final MyoroIconTextButtonConfiguration _configuration;

  const _Button(this._tapStatusEnum, this._configuration);

  @override
  Widget build(BuildContext context) {
    final bool invert = _configuration.invert;
    final MyoroIconTextButtonConfigurationContentColorBuilder? contentColorBuilder = _configuration.contentColorBuilder;
    final MyoroIconTextButtonIconConfiguration? iconConfiguration = _configuration.iconConfiguration;
    final MyoroIconTextButtonTextConfiguration? textConfiguration = _configuration.textConfiguration;

    final bool iconConfigurationNotNull = iconConfiguration != null;
    final bool textConfigurationNotNull = textConfiguration != null;
    final bool iconConfigurationAndTextConfigurationNotNull = iconConfigurationNotNull && textConfigurationNotNull;

    final iconWidget = iconConfigurationNotNull ? _Icon(_tapStatusEnum, contentColorBuilder, iconConfiguration) : null;
    final textWidget = textConfigurationNotNull ? _Text(_tapStatusEnum, contentColorBuilder, textConfiguration) : null;

    return Padding(
      padding: _configuration.padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: _configuration.spacing,
        children:
            iconConfigurationAndTextConfigurationNotNull
                ? [!invert ? iconWidget! : textWidget!, !invert ? textWidget! : iconWidget!]
                : [if (iconConfigurationNotNull) iconWidget!, if (textConfigurationNotNull) textWidget!],
      ),
    );
  }
}
