part of '../myoro_indexed_stack.dart';

/// Indicator item of [MyoroIndexedStack].
final class _IndicatorItem extends StatelessWidget {
  const _IndicatorItem(this._isSelected);

  final bool _isSelected;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIndexedStackThemeExtension>();
    final style = context.watch<MyoroIndexedStackStyle>();
    final indicatorItemHeight = style.indicatorItemHeight ?? themeExtension.indicatorItemHeight;
    final indicatorItemBorderRadius = style.indicatorItemBorderRadius ?? themeExtension.indicatorItemBorderRadius;
    final indicatorItemSelectedColor = style.indicatorItemSelectedColor ?? themeExtension.indicatorItemSelectedColor;
    final indicatorItemUnselectedColor =
        style.indicatorItemUnselectedColor ?? themeExtension.indicatorItemUnselectedColor;

    return AnimatedContainer(
      duration: kMyoroAnimationDuration,
      height: indicatorItemHeight,
      decoration: BoxDecoration(
        borderRadius: indicatorItemBorderRadius,
        color: _isSelected ? indicatorItemSelectedColor : indicatorItemUnselectedColor,
      ),
    );
  }
}
