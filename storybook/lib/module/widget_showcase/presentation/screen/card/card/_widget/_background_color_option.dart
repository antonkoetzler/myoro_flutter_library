part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCardThemeExtension.backgroundColor] option of [MyoroCardWidgetShowcaseScreen].
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Background color',
      selectedColor: viewModel.state.backgroundColor,
      onChanged: (color) => viewModel.state.backgroundColor = color,
    );
  }
}
