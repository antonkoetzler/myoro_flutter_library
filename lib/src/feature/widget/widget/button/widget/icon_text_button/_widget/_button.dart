part of '../myoro_icon_text_button.dart';

/// UI of the [MyoroIconTextButton].
final class _Button extends StatelessWidget {
  const _Button(this._tapStatusEnum);

  final MyoroTapStatusEnum _tapStatusEnum;

  @override
  Widget build(context) {
    final themeExtension = MyoroIconTextButtonThemeExtension.fromVariant(
      MyoroButtonPrimaryVariantThemeExtension.builder(context.isDarkMode, context.colorScheme),
    );

    final configuration = context.read<MyoroIconTextButtonConfiguration>();
    final invert = configuration.invert;
    final iconConfiguration = configuration.iconConfiguration;
    final textConfiguration = configuration.textConfiguration;

    final iconConfigurationNotNull = iconConfiguration != null;
    final textConfigurationNotNull = textConfiguration != null;
    final iconConfigurationAndTextConfigurationNotNull =
        iconConfigurationNotNull && textConfigurationNotNull;

    final iconWidget = iconConfigurationNotNull ? _Icon(_tapStatusEnum) : null;
    final textWidget = textConfigurationNotNull ? _Text(_tapStatusEnum) : null;

    final contentPadding = themeExtension.contentPadding ?? EdgeInsets.zero;
    final spacing = themeExtension.spacing ?? 0;

    return Padding(
      padding: contentPadding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: spacing,
        children: iconConfigurationAndTextConfigurationNotNull
            ? [!invert ? iconWidget! : textWidget!, !invert ? textWidget! : iconWidget!]
            : [
                if (iconConfigurationNotNull) iconWidget!,
                if (textConfigurationNotNull) textWidget!,
              ],
      ),
    );
  }
}
