part of '../bundle/myoro_slider_bundle.dart';

/// Indicator text at the edges of a [MyoroSlider].
final class _IndicatorText extends StatelessWidget {
  final String _text;
  final bool isFooter;

  const _IndicatorText(this._text, {this.isFooter = false});

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSliderThemeExtension>();
    final style = context.watch<MyoroSliderStyle>();

    return Text(
      _text,
      textAlign: style.indicatorTextAlignment ?? themeExtension.indicatorTextAlignment,
      style: (style.indicatorTextStyle ?? themeExtension.indicatorTextStyle)?.copyWith(height: isFooter ? 0 : 0.5),
    );
  }
}
