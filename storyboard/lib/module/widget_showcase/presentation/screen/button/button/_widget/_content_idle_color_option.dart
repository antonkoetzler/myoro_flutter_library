part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonThemeExtension.contentIdleColor] option of [MyoroButtonWidgetShowcaseScreen].
final class _ContentIdleColorOption extends StatelessWidget {
  const _ContentIdleColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Content idle color',
      selectedColor: viewModel.state.contentIdleColor,
      onChanged: (color) => viewModel.state.contentIdleColor = color,
    );
  }
}
