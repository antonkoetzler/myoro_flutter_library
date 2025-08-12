part of '../myoro_range_slider.dart';

/// Wrapper of [MyoroRangeSlider]'s content.
final class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroRangeSliderViewModel>();
    final onChanged = viewModel.onChanged;

    return RangeSlider(values: const RangeValues(0, 0), onChanged: onChanged);
  }
}
