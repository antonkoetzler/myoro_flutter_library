part of '../myoro_button_widget_showcase_screen.dart';

/// Content of the [MyoroButton] of [MyoroButtonWidgetShowcaseScreen].
final class _ButtonContent extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;

  const _ButtonContent(this._tapStatusEnum);

  @override
  Widget build(context) {
    final iconTextButtonThemeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final contentPadding = iconTextButtonThemeExtension.contentPadding ?? EdgeInsets.zero;
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
      padding: contentPadding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [icon, Text(tapStatusEnumName, style: myoroFake<TextStyle>().withColor(myoroFake<Color>())), icon],
      ),
    );
  }
}
