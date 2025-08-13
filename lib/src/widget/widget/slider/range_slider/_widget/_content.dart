part of '../myoro_range_slider.dart';

/// Wrapper of [MyoroRangeSlider]'s content.
final class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroRangeSliderViewModel>();
    final state = viewModel.state;
    final valueNotifier = state.valueNotifier;
    final onChanged = viewModel.onChanged;

    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (_, values, _) {
        return RangeSlider(values: values, onChanged: onChanged);
      },
    );
  }
}
