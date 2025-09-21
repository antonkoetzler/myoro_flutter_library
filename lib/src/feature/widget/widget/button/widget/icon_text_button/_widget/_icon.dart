part of '../myoro_icon_text_button.dart';

/// Icon of a [MyoroIconTextButton].
final class _Icon extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;

  const _Icon(this._tapStatusEnum);

  @override
  Widget build(context) {
    final themeExtension = MyoroIconTextButtonThemeExtension.fromVariant(
      MyoroButtonPrimaryVariantThemeExtension.builder(context.isDarkMode, context.colorScheme),
    );
    final configuration = context.read<MyoroIconTextButtonConfiguration>();
    final iconConfiguration = configuration.iconConfiguration;
    final contentColorBuilder = themeExtension.contentColorBuilder;

    return Icon(
      iconConfiguration!.icon,
      size: iconConfiguration.size,
      color: contentColorBuilder(_tapStatusEnum),
    );
  }
}
