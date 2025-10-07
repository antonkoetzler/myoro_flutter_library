part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for enabling/disabling gradient overlays.
final class _GradientEnabledOption extends StatelessWidget {
  const _GradientEnabledOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollableWidgetShowcaseViewModel>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Gradient Overlay', style: TextStyle(fontWeight: FontWeight.bold)),
        Switch(value: viewModel.gradientEnabled, onChanged: viewModel.setGradientEnabled),
      ],
    );
  }
}
