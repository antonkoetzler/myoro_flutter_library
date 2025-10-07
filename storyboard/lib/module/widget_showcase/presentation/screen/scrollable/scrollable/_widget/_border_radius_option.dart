part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring border radius.
final class _BorderRadiusOption extends StatelessWidget {
  const _BorderRadiusOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollableWidgetShowcaseViewModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Border Radius'),
        Slider(
          value: _getBorderRadiusValue(viewModel.borderRadius),
          min: 0.0,
          max: 20.0,
          divisions: 20,
          label: '${_getBorderRadiusValue(viewModel.borderRadius).round()}px',
          onChanged: (value) {
            viewModel.setBorderRadius(value == 0 ? null : BorderRadius.all(Radius.circular(value)));
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
