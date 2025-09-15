part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.primaryColor] option of [MyoroInputWidgetShowcaseScreen].
final class _PrimaryColorOption extends StatelessWidget {
  const _PrimaryColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Primary color',
      selectedColor: viewModel.state.primaryColor,
      onChanged: (color) => viewModel.state.primaryColor = color,
      checkboxOnChanged: (enabled, _) => viewModel.state.primaryColor = enabled ? null : viewModel.state.primaryColor,
    );
  }
}
