part of '../myoro_form_widget_showcase.dart';

/// Kitty that is shown when the form is completed successfully.
final class _Kitty extends StatelessWidget {
  const _Kitty();

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroFormWidgetShowcaseThemeExtension>();
    final borderRadius = themeExtension.kittyBorderRadius;
    final size = themeExtension.kittySize;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: borderRadius,
      child: Image.asset(kSnazzyCat, width: size, fit: BoxFit.contain),
    );
  }
}
