import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Button that holds an icon and/or text.
///
/// TODO: Needs to be tested.
class MyoroIconTextButton extends StatelessWidget {
  /// Configuration of the [MyoroIconTextButton].
  final MyoroIconTextButtonConfiguration configuration;

  const MyoroIconTextButton({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return MyoroButton(configuration: configuration, builder: _builder);
  }

  Widget _builder(_, MyoroTapStatusEnum tapStatusEnum) {
    return _Button(tapStatusEnum, configuration);
  }
}

final class _Button extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroIconTextButtonConfiguration _configuration;

  const _Button(this._tapStatusEnum, this._configuration);

  @override
  Widget build(BuildContext context) {
    final bool invert = _configuration.invert;
    final MyoroIconTextButtonConfigurationContentColorBuilder? contentColorBuilder =
        _configuration.contentColorBuilder;
    final MyoroIconTextButtonIconConfiguration? iconConfiguration =
        _configuration.iconConfiguration;
    final MyoroIconTextButtonTextConfiguration? textConfiguration =
        _configuration.textConfiguration;

    final bool iconConfigurationNotNull = iconConfiguration != null;
    final bool textConfigurationNotNull = textConfiguration != null;
    final bool iconConfigurationAndTextConfigurationNotNull =
        iconConfigurationNotNull && textConfigurationNotNull;

    final iconWidget =
        iconConfigurationNotNull
            ? _Icon(_tapStatusEnum, contentColorBuilder, iconConfiguration)
            : null;
    final textWidget =
        textConfigurationNotNull
            ? _Text(_tapStatusEnum, contentColorBuilder, textConfiguration)
            : null;

    return Padding(
      padding: _configuration.padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: _configuration.spacing,
        children:
            iconConfigurationAndTextConfigurationNotNull
                ? [!invert ? iconWidget! : textWidget!, !invert ? textWidget! : iconWidget!]
                : [
                  if (iconConfigurationNotNull) iconWidget!,
                  if (textConfigurationNotNull) textWidget!,
                ],
      ),
    );
  }
}

final class _Icon extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroIconTextButtonConfigurationContentColorBuilder? _contentColorBuilder;
  final MyoroIconTextButtonIconConfiguration _iconConfiguration;

  const _Icon(this._tapStatusEnum, this._contentColorBuilder, this._iconConfiguration);

  @override
  Widget build(BuildContext context) {
    return Icon(
      _iconConfiguration.icon,
      size: _iconConfiguration.size,
      color:
          _contentColorBuilder?.call(_tapStatusEnum) ??
          MyoroButtonVariantEnum.primary.contentColorBuilder(context, _tapStatusEnum),
    );
  }
}

final class _Text extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroIconTextButtonConfigurationContentColorBuilder? _contentColorBuilder;
  final MyoroIconTextButtonTextConfiguration _textConfiguration;

  const _Text(this._tapStatusEnum, this._contentColorBuilder, this._textConfiguration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();

    return Expanded(
      child: Text(
        _textConfiguration.text,
        maxLines: _textConfiguration.maxLines,
        overflow: _textConfiguration.overflow,
        textAlign: _textConfiguration.alignment,
        style: (_textConfiguration.style ?? themeExtension.textStyle).withColor(
          _contentColorBuilder?.call(_tapStatusEnum) ??
              MyoroButtonVariantEnum.primary.contentColorBuilder(context, _tapStatusEnum),
        ),
      ),
    );
  }
}
