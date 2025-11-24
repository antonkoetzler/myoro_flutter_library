part of '../widget/myoro_icon_text_button.dart';

/// Icon of a [MyoroIconTextButton].
final class _Icon extends StatelessWidget {
  const _Icon(this._tapStatusEnum, this._icon);

  final MyoroTapStatusEnum _tapStatusEnum;
  final IconData _icon;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final style = context.watch<MyoroIconTextButtonStyle>();
    final iconSize = style.iconSize ?? themeExtension.iconSize;
    final currentColor =
        style.contentColorBuilder(_tapStatusEnum) ?? themeExtension.contentColorBuilder(_tapStatusEnum);
    return Icon(_icon, size: iconSize, color: currentColor);
  }
}
