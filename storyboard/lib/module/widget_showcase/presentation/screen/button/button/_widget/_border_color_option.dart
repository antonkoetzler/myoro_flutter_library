part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonThemeExtension.borderColor] option of [MyoroButtonWidgetShowcaseScreen].
final class _BorderColorOption extends StatelessWidget {
  const _BorderColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Border color',
      selectedColor: viewModel.state.borderColor,
      onChanged: (color) => viewModel.state.borderColor = color,
    );
  }
}
