part of '../myoro_icon_text_button.dart';

/// Text of the [MyoroIconTextButton].
final class _Text extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroIconTextButtonConfigurationContentColorBuilder? _contentColorBuilder;
  final MyoroTextConfiguration _textConfiguration;

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
              MyoroButtonStyleEnum.primary.contentColorBuilder(context, _tapStatusEnum),
        ),
      ),
    );
  }
}
