import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the divider resize is activated.
typedef MyoroResizeDividerDragCallback = Function(DragUpdateDetails details);

/// A divider with a click/tap + drag resize functionality.
final class MyoroResizeDivider extends StatelessWidget {
  /// Direction of the divider.
  final Axis direction;

  /// Resize activated callback.
  final MyoroResizeDividerDragCallback? dragCallback;

  const MyoroResizeDivider(
    this.direction, {
    super.key,
    this.dragCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MyoroBasicDivider(direction),
        _ResizeButton(direction, dragCallback),
      ],
    );
  }
}

final class _ResizeButton extends StatelessWidget {
  final Axis direction;
  final MyoroResizeDividerDragCallback? dragCallback;

  const _ResizeButton(this.direction, this.dragCallback);

  @override
  Widget build(BuildContext context) {
    final isHorizontal = direction.isHorizontal;
    const shortValue = 10.0;
    const longValue = 30.0;

    return MouseRegion(
      cursor: isHorizontal ? SystemMouseCursors.resizeRow : SystemMouseCursors.resizeColumn,
      child: GestureDetector(
        onHorizontalDragUpdate: isHorizontal ? null : dragCallback,
        onVerticalDragUpdate: isHorizontal ? dragCallback : null,
        child: Container(
          width: isHorizontal ? longValue : shortValue,
          height: isHorizontal ? shortValue : longValue,
          decoration: BoxDecoration(
            color: ColorDesignSystem.secondary(context),
            borderRadius: kBorderRadius,
          ),
        ),
      ),
    );
  }
}
