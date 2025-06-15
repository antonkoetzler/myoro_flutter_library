part of '../myoro_resize_divider.dart';

/// Resize button of [MyoroResizeDivider].
final class _ResizeButton extends StatelessWidget {
  final MyoroResizeDividerConfiguration _configuration;

  const _ResizeButton(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroResizeDividerThemeExtension>();
    final shortValue = themeExtension.resizeButtonShortValue;
    final longValue = themeExtension.resizeButtonLongValue;
    final isHorizontal = _configuration.basicDividerConfiguration.direction.isHorizontal;

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
