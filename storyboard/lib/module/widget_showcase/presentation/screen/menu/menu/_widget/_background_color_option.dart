part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.backgroundColor] option of [MyoroMenuWidgetShowcaseScreen].
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      initiallySelectedColor: viewModel.state.backgroundColor,
      onChanged: (color) => viewModel.state.backgroundColor = color,
      checkboxOnChanged: (enabled, color) => viewModel.state.backgroundColor = enabled ? color : null,
    );
  }
}
