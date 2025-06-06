part of '../myoro_bar_graph.dart';

/// Titles on each axis of the [MyoroBarGraph].
final class _SideTitle extends StatelessWidget {
  final double _value;
  final Axis _axis;

  const _SideTitle(this._value, this._axis);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: _axis.isVertical ? 5 : 0),
      child: Text(
        _value.toStringAsFixed(_value == 0 || _value == _value.toInt() ? 0 : 2),
        textAlign: TextAlign.right,
        style: context.resolveThemeExtension<MyoroBarGraphThemeExtension>().sideTitleTextStyle,
      ),
    );
  }
}
