part of '../myoro_search_input_widget_showcase.dart';

/// [MyoroInputConfiguration.suffix]'s [Widget] of [_Widget].
final class _Suffix extends StatelessWidget {
  const _Suffix();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputWidgetShowcaseThemeExtension>();

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: themeExtension.suffixBorderRadius,
      child: Image.asset(kHappyCat, width: themeExtension.suffixSize, fit: BoxFit.contain),
    );
  }
}
