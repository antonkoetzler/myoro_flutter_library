part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.underlinedBorder] option of [MyoroInputWidgetShowcaseScreen].
final class _UnderlinedBorderOption extends StatelessWidget {
  const _UnderlinedBorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return InputBorderWidgetShowcaseOption(
      label: 'Underlined border',
      selectedBorder: viewModel.state.underlinedBorder,
      onChanged: (border) => viewModel.state.underlinedBorder = border as UnderlineInputBorder?,
    );
  }
}
