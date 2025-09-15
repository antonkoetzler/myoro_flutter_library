part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonThemeExtension.contentTapColor] option of [MyoroButtonWidgetShowcaseScreen].
final class _ContentTapColorOption extends StatelessWidget {
  const _ContentTapColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Content tap color',
      selectedColor: viewModel.state.contentTapColor,
      onChanged: (color) => viewModel.state.contentTapColor = color,
      checkboxOnChanged:
          (enabled, _) => viewModel.state.contentTapColor = enabled ? null : viewModel.state.contentTapColor,
    );
  }
}
