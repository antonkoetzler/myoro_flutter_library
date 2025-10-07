part of '../myoro_icon_text_button.dart';

/// Icon of a [MyoroIconTextButton].
final class _Icon extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;

  const _Icon(this._tapStatusEnum);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final style = context.watch<MyoroIconTextButtonStyle>();
    final contentColor =
        style.contentColorBuilder(_tapStatusEnum) ?? themeExtension.contentColorBuilder(_tapStatusEnum);

    final configuration = context.read<MyoroIconTextButtonConfiguration>();
    final iconConfiguration = configuration.iconConfiguration;

    return Icon(iconConfiguration!.icon, size: iconConfiguration.size, color: contentColor);
  }
}
