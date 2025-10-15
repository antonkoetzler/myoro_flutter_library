part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.outlinedBorder] option of [MyoroInputWidgetShowcaseScreen].
final class _OutlinedBorderOption extends StatelessWidget {
  const _OutlinedBorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return InputBorderWidgetShowcaseOption(
      label: 'Outlined border',
      selectedBorder: viewModel.state.outlinedBorder,
      onChanged: (border) => viewModel.state.outlinedBorder = border as OutlineInputBorder?,
    );
  }
}
