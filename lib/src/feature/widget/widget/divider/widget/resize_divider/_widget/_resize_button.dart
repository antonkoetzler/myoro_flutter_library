part of '../myoro_resize_divider.dart';

/// Resize button of [MyoroResizeDivider].
final class _ResizeButton extends StatelessWidget {
  const _ResizeButton(this._direction);

  final Axis _direction;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroResizeDividerThemeExtension>();
    final shortValue = themeExtension.resizeButtonShortValue;
    final longValue = themeExtension.resizeButtonLongValue;
    final isHorizontal = _direction.isHorizontal;

    return MouseRegion(
      cursor: isHorizontal ? SystemMouseCursors.resizeRow : SystemMouseCursors.resizeColumn,
      child: GestureDetector(
        onHorizontalDragUpdate: isHorizontal ? null : _configuration.dragCallback,
        onVerticalDragUpdate: isHorizontal ? _configuration.dragCallback : null,
        child: Container(
          width: isHorizontal ? longValue : shortValue,
          height: isHorizontal ? shortValue : longValue,
          decoration: BoxDecoration(
            color: themeExtension.secondary,
            borderRadius: themeExtension.resizeButtonBorderRadius,
          ),
        ),
      ),
    );
  }
}
