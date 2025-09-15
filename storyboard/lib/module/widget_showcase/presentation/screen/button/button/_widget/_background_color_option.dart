part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonThemeExtension.backgroundColor] option of [MyoroButtonWidgetShowcaseScreen].
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Background color',
      selectedColor: viewModel.state.backgroundColor,
      onChanged: (color) => viewModel.state.backgroundColor = color,
      checkboxOnChanged:
          (enabled, _) => viewModel.state.backgroundColor = enabled ? null : viewModel.state.backgroundColor,
    );
  }
}
