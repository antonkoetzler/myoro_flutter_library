part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring padding.
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final padding = state.padding;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Padding'),
        Slider(
          value: _getPaddingValue(padding),
          min: 0.0,
          max: 32.0,
          divisions: 16,
          label: '${_getPaddingValue(padding).round()}px',
          onChanged: (value) {
            state.padding = value == 0 ? null : EdgeInsets.all(value);
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
