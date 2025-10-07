part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring padding.
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollableWidgetShowcaseViewModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Padding'),
        Slider(
          value: _getPaddingValue(viewModel.padding),
          min: 0.0,
          max: 32.0,
          divisions: 16,
          label: '${_getPaddingValue(viewModel.padding).round()}px',
          onChanged: (value) {
            viewModel.setPadding(value == 0 ? null : EdgeInsets.all(value));
          },
        ),
      ],
    );
  }

  double _getPaddingValue(EdgeInsets? padding) {
    if (padding == null) return 0.0;
    return padding.left;
  }
}
