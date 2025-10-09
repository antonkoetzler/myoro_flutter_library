part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring margin.
final class _MarginOption extends StatelessWidget {
  const _MarginOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final margin = state.margin;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Margin'),
        Slider(
          value: _getMarginValue(margin),
          min: 0.0,
          max: 32.0,
          divisions: 16,
          label: '${_getMarginValue(margin).round()}px',
          onChanged: (value) {
            state.margin = value == 0 ? null : EdgeInsets.all(value);
          },
        ),
      ],
    );
  }

  double _getMarginValue(EdgeInsets? margin) {
    if (margin == null) return 0.0;
    return margin.left;
  }
}
