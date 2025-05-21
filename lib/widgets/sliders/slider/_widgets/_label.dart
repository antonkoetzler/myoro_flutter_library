part of '../myoro_slider.dart';

/// Label of the [MyoroSlider].
final class _Label extends StatelessWidget {
  final String _label;
  final TextStyle? _labelTextStyle;

  const _Label(this._label, this._labelTextStyle);

  @override
  Widget build(BuildContext context) {
    return Text(
      _label,
      style: _labelTextStyle ?? context.resolveThemeExtension<MyoroSliderThemeExtension>().labelTextStyle,
    );
  }
}
