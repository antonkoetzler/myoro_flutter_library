part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.backgroundColor] option of [MyoroMenuWidgetShowcaseScreen].
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      selectedColor: viewModel.state.backgroundColor,
      onChanged: (color) => viewModel.state.backgroundColor = color,
      checkboxOnChanged: (enabled, color) => viewModel.state.backgroundColor = enabled ? color : null,
    );
  }
}
