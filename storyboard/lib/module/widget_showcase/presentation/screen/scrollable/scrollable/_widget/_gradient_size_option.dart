part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring gradient size.
final class _GradientSizeOption extends StatelessWidget {
  const _GradientSizeOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollableWidgetShowcaseViewModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Gradient Size: ${viewModel.gradientSize.round()}px', style: const TextStyle(fontWeight: FontWeight.bold)),
        Slider(
          value: viewModel.gradientSize,
          min: 10.0,
          max: 100.0,
          divisions: 18,
          onChanged: viewModel.setGradientSize,
        ),
      ],
    );
  }
}
