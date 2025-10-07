part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.noneBorder] option of [MyoroInputWidgetShowcaseScreen].
final class _NoneBorderOption extends StatelessWidget {
  const _NoneBorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return InputBorderWidgetShowcaseOption(
      label: 'None border',
      selectedBorder: viewModel.state.noneBorder,
      onChanged: (border) => viewModel.state.noneBorder = border,
    );
  }
}
