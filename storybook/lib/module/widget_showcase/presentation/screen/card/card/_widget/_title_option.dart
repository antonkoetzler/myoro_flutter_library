part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCardConfiguration.title] & [MyoroCardConfiguration.titleTextStyle] option of [MyoroCardWidgetShowcaseScreen].
final class _TitleOption extends StatelessWidget {
  const _TitleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textOnChanged: (title) => viewModel.state.title = title,
        styleOnChanged: (titleTextStyle) => viewModel.state.titleTextStyle = titleTextStyle,
      ),
    );
  }
}
