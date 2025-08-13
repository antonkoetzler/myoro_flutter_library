part of '../myoro_slider.dart';

/// Label of the [MyoroSlider].
final class _Label extends StatelessWidget {
  const _Label(this._configuration);

  final MyoroSliderConfiguration _configuration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();
    final label = _configuration.label;
    final labelTextStyle = _configuration.labelTextStyle ?? themeExtension.labelTextStyle;
    return Text(label, style: labelTextStyle);
  }
}
