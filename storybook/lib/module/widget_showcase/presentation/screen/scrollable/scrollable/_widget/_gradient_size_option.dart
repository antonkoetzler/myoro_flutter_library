part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring gradient size.
final class _GradientSizeOption extends StatelessWidget {
  const _GradientSizeOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final gradientSize = state.gradientSize;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Gradient Size: ${gradientSize.round()}px', style: const TextStyle(fontWeight: FontWeight.bold)),
        Slider(
          value: gradientSize,
          min: 10.0,
          max: 100.0,
          divisions: 18,
          onChanged: (value) => state.gradientSize = value,
        ),
      ],
    );
  }
}
