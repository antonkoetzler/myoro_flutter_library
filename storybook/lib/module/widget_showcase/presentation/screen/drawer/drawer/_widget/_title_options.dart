part of '../myoro_drawer_widget_showcase_screen.dart';

/// Options for [MyoroDrawerConfiguration.title] and [MyoroDrawerConfiguration.titleTextStyle].
final class _TitleOptions extends StatelessWidget {
  const _TitleOptions();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseScreenViewModel>();

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textOnChanged: (text) => viewModel.title = text,
        styleOnChanged: (textStyle) => viewModel.titleTextStyle = textStyle,
      ),
    );
  }
}
