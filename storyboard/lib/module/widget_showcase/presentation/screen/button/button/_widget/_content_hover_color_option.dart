part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonThemeExtension.contentHoverColor] option of [MyoroButtonWidgetShowcaseScreen].
final class _ContentHoverColorOption extends StatelessWidget {
  const _ContentHoverColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Content hover color',
      selectedColor: viewModel.state.contentHoverColor,
      onChanged: (color) => viewModel.state.contentHoverColor = color,
      checkboxOnChanged:
          (enabled, _) => viewModel.state.contentHoverColor = enabled ? null : viewModel.state.contentHoverColor,
    );
  }
}
