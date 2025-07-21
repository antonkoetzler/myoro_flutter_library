part of '../myoro_resize_divider_widget_showcase_screen.dart';

/// Kitty that [_Cover] is hiding in [MyoroResizeDividerWidgetShowcaseScreen].
final class _Kitty extends StatelessWidget {
  const _Kitty();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroResizeDividerWidgetShowcaseScreenThemeExtension>();

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: themeExtension.kittyBorderRadius,
      child: Image.asset(kSnazzyCat, width: themeExtension.kittySize, fit: BoxFit.contain),
    );
  }
}
