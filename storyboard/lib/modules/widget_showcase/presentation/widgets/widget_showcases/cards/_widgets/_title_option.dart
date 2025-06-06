part of '../myoro_card_widget_showcase.dart';

/// [MyoroCardConfiguration.title] & [MyoroCardConfiguration.titleTextStyle] option of [MyoroCardWidgetShowcase].
final class _TitleOption extends StatelessWidget {
  const _TitleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseViewModel>();

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        textOnChanged: (title) => viewModel.title = title,
        styleOnChanged: (titleTextStyle) => viewModel.titleTextStyle = titleTextStyle,
      ),
    );
  }
}
