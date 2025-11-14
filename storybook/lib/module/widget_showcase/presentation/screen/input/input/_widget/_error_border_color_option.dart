part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.errorBorderColor] option of [MyoroInputWidgetShowcaseScreen].
final class _ErrorBorderColorOption extends StatelessWidget {
  const _ErrorBorderColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionErrorBorderColorLabel,
      selectedColor: viewModel.state.errorBorderColor,
      onChanged: (color) => viewModel.state.errorBorderColor = color,
    );
  }
}
