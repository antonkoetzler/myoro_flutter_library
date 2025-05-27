part of '../myoro_button_widget_showcase.dart';

/// Content of the [MyoroButton] of [MyoroButtonWidgetShowcase].
final class _ButtonContent extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;

  const _ButtonContent(this._tapStatusEnum);

  @override
  Widget build(BuildContext context) {
    final iconTextButtonThemeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final tapStatusEnumName = '${_tapStatusEnum.name[1].toUpperCase()}${_tapStatusEnum.name.substring(1)}';

    const iconSize = 50.0;
    final icon = Image.asset(
      switch (_tapStatusEnum) {
        MyoroTapStatusEnum.idle => kHappyCat,
        MyoroTapStatusEnum.hover => kAreYouSillyCat,
        MyoroTapStatusEnum.tap => kSnazzyCat,
      },
      width: iconSize,
      height: iconSize,
    );

    return Padding(
      padding: MyoroIconTextButtonConfiguration.paddingDefaultValue,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          Text(tapStatusEnumName, style: iconTextButtonThemeExtension.textStyle.withColor(myoroFake<Color>())),
          icon,
        ],
      ),
    );
  }
}
