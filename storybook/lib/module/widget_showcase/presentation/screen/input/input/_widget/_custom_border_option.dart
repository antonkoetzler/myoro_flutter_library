part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.border] option of [MyoroInputWidgetShowcaseScreen].
final class _CustomBorderOption extends StatelessWidget {
  const _CustomBorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return InputBorderWidgetShowcaseOption(
      label: 'Custom border',
      selectedBorder: viewModel.state.customBorder,
      onChanged: (border) => viewModel.state.customBorder = border,
    );
  }
}
