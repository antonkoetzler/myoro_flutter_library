part of '../myoro_time_picker_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.suffix]'s [Widget] of [_Widget].
final class _Suffix extends StatelessWidget {
  const _Suffix();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputWidgetShowcaseScreenThemeExtension>();

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: themeExtension.suffixBorderRadius,
      child: Image.asset(kHappyCat, width: themeExtension.suffixSize, fit: BoxFit.contain),
    );
  }
}
