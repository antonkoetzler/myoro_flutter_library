part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring border radius.
final class _BorderRadiusOption extends StatelessWidget {
  const _BorderRadiusOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final borderRadius = state.borderRadius;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Border Radius'),
        Slider(
          value: _getBorderRadiusValue(borderRadius),
          min: 0.0,
          max: 20.0,
          divisions: 20,
          label: '${_getBorderRadiusValue(borderRadius).round()}px',
          onChanged: (value) {
            state.borderRadius = value == 0 ? null : BorderRadius.all(Radius.circular(value));
          },
        ),
      ],
    );
  }

  double _getBorderRadiusValue(BorderRadius? borderRadius) {
    if (borderRadius == null) return 0.0;
    return borderRadius.topLeft.x;
  }
}
