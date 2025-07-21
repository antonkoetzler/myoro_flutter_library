part of '../widget_showcase_screen.dart';

/// [Widget] that showcases a [Widget] in MFL and provides options to fidget with said [Widget].
final class _WidgetShowcase extends StatelessWidget {
  const _WidgetShowcase();

  @override
  Widget build(context) {
    final viewModel = context.read<WidgetShowcaseScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    return Padding(
      padding: themeExtension.padding,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: themeExtension.decoration,
        padding: themeExtension.contentPadding,
        child: Center(child: viewModel.configuration.widget),
      ),
    );
  }
}
