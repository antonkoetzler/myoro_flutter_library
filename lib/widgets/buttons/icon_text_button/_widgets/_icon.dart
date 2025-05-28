part of '../myoro_icon_text_button.dart';

/// Icon of a [MyoroIconTextButton].
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
          MyoroButtonStyleEnum.primary.contentColorBuilder(context, _tapStatusEnum),
    );
  }
}
