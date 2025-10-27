part of '../widget/myoro_resize_divider.dart';

/// Resize button of [MyoroResizeDivider].
final class _ResizeButton extends StatelessWidget {
  const _ResizeButton(this._direction, this._dragCallback);

  final Axis _direction;
  final MyoroResizeDividerDragCallback? _dragCallback;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroResizeDividerThemeExtension>();
    final style = context.watch<MyoroResizeDividerStyle>();
    final resizeButtonShortValue = style.resizeButtonShortValue ?? themeExtension.resizeButtonShortValue;
    final resizeButtonLongValue = style.resizeButtonLongValue ?? themeExtension.resizeButtonLongValue;
    final resizeButtonColor = style.resizeButtonColor ?? themeExtension.resizeButtonColor;
    final resizeButtonBorderRadius = style.resizeButtonBorderRadius ?? themeExtension.resizeButtonBorderRadius;

    final isHorizontal = _direction.isHorizontal;

    return MouseRegion(
      cursor: isHorizontal ? SystemMouseCursors.resizeRow : SystemMouseCursors.resizeColumn,
      child: GestureDetector(
        onHorizontalDragUpdate: isHorizontal ? null : _dragCallback,
        onVerticalDragUpdate: isHorizontal ? _dragCallback : null,
        child: Container(
          width: isHorizontal ? resizeButtonLongValue : resizeButtonShortValue,
          height: isHorizontal ? resizeButtonShortValue : resizeButtonLongValue,
          decoration: BoxDecoration(color: resizeButtonColor, borderRadius: resizeButtonBorderRadius),
        ),
      ),
    );
  }
}
