part of '../myoro_slider.dart';

/// Indicator text at the edges of a [MyoroSlider].
final class _IndicatorText extends StatelessWidget {
  final String _text;
  final bool isFooter;

  const _IndicatorText(this._text, {this.isFooter = false});

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();

    return Text(
      _text,
      textAlign: themeExtension.indicatorTextAlignment,
      style: themeExtension.indicatorTextStyle.copyWith(height: isFooter ? 0 : 0.5),
    );
  }
}
