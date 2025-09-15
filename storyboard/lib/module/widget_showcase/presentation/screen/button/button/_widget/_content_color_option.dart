part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonThemeExtension.contentColor] option of [MyoroButtonWidgetShowcaseScreen].
final class _ContentColorOption extends StatelessWidget {
  const _ContentColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Content color',
      selectedColor: viewModel.state.contentColor,
      onChanged: (color) => viewModel.state.contentColor = color,
      checkboxOnChanged: (enabled, _) => viewModel.state.contentColor = enabled ? null : viewModel.state.contentColor,
    );
  }
}
