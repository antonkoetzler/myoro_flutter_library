part of '../myoro_slider.dart';

/// Label of the [MyoroSlider].
final class _Label extends StatelessWidget {
  const _Label();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSliderViewModel>();
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();

    assert(viewModel.configuration?.label != null);

    return Text(
      viewModel.configuration!.label,
      style: viewModel.configuration?.labelTextStyle ?? themeExtension.labelTextStyle,
    );
  }
}
