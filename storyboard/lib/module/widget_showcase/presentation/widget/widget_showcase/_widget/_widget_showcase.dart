part of '../widget_showcase_screen.dart';

/// [Widget] that showcases a [Widget] in MFL and provides options to fidget with said [Widget].
final class _WidgetShowcase extends StatelessWidget {
  const _WidgetShowcase();

  @override
  Widget build(context) {
    final viewModel = context.read<WidgetShowcaseScreenViewModel>();
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: themeExtension.color,
      padding: themeExtension.padding,
      child: Center(child: viewModel.configuration.widget),
    );
  }
}
