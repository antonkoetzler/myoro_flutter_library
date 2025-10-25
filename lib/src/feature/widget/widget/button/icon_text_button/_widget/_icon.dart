part of '../widget/myoro_icon_text_button.dart';

/// Icon of a [MyoroIconTextButton].
final class _Icon extends StatelessWidget {
  const _Icon(this._tapStatusEnum, this._iconConfiguration);

  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroIconConfiguration _iconConfiguration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final style = context.watch<MyoroIconTextButtonStyle>();
    final contentColor =
        style.contentColorBuilder(_tapStatusEnum) ?? themeExtension.contentColorBuilder(_tapStatusEnum);

    final icon = _iconConfiguration.icon;
    final size = _iconConfiguration.size;

    return Icon(icon, size: size, color: contentColor);
  }
}
