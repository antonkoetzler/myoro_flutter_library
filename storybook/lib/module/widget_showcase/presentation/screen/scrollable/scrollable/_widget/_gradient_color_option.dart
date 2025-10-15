part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring gradient color.
final class _GradientColorOption extends StatelessWidget {
  const _GradientColorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final gradientColor = state.gradientColor;

    return ColorWidgetShowcaseOption(
      label: 'Gradient Color',
      selectedColor: gradientColor,
      onChanged: (Color? color) => state.gradientColor = color ?? Colors.white,
    );
  }
}
