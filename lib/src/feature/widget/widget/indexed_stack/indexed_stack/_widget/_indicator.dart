part of '../myoro_indexed_stack.dart';

/// Indicator of [MyoroIndexedStack].
final class _Indicator extends StatelessWidget {
  const _Indicator(this._selectedIndex, this._children);

  final int _selectedIndex;
  final List<Widget> _children;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIndexedStackThemeExtension>();
    final style = context.watch<MyoroIndexedStackStyle>();
    final indicatorSpacing = style.indicatorSpacing ?? themeExtension.indicatorSpacing ?? 0;

    return Row(
      spacing: indicatorSpacing,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [for (var i = 0; i < _children.length; i++) Expanded(child: _IndicatorItem(_selectedIndex == i))],
    );
  }
}
