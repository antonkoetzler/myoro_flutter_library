part of '../myoro_drawer_widget_showcase.dart';

/// Options for [MyoroDrawerConfiguration.title] and [MyoroDrawerConfiguration.titleTextStyle].
final class _TitleOptions extends StatelessWidget {
  const _TitleOptions();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseViewModel>();

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textOnChanged: (text) => viewModel.title = text,
        styleOnChanged: (textStyle) => viewModel.titleTextStyle = textStyle,
      ),
    );
  }
}
