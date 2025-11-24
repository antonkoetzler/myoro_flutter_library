part of '../myoro_tag_widget_showcase_screen.dart';

/// [MyoroTagThemeExtension.backgroundColor] option of [MyoroTagWidgetShowcaseScreen].
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTagWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionBackgroundColorLabel,
      selectedColor: viewModel.state.backgroundColor,
      onChanged: (color) => viewModel.state.backgroundColor = color,
    );
  }
}
