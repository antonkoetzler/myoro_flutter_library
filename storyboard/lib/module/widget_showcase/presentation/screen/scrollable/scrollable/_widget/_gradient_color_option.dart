part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring gradient color.
final class _GradientColorOption extends StatelessWidget {
  const _GradientColorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollableWidgetShowcaseViewModel>();

    return ColorWidgetShowcaseOption(
      label: 'Gradient Color',
      selectedColor: viewModel.gradientColor,
      onChanged: (Color? color) => viewModel.setGradientColor(color ?? Colors.white),
    );
  }
}
