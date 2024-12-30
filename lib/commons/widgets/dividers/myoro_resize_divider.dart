import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the divider resize is activated.
typedef MyoroResizeDividerDragCallback = void Function(DragUpdateDetails details);

/// A divider with a click/tap + drag resize functionality.
final class MyoroResizeDivider extends StatelessWidget {
  /// Configuration model with all configurable options of [MyoroBasicDivider].
  final MyoroBasicDividerConfiguration configuration;

  /// Resize activated callback.
  final MyoroResizeDividerDragCallback? dragCallback;

  const MyoroResizeDivider({
    super.key,
    required this.configuration,
    this.dragCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MyoroBasicDivider(configuration: configuration),
        _ResizeButton(configuration.direction, dragCallback),
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
    final themeExtension = context.resolveThemeExtension<MyoroResizeDividerThemeExtension>();
    final shortValue = themeExtension.resizeButtonShortValue;
    final longValue = themeExtension.resizeButtonLongValue;
    final isHorizontal = direction.isHorizontal;

    return MouseRegion(
      cursor: isHorizontal ? SystemMouseCursors.resizeRow : SystemMouseCursors.resizeColumn,
      child: GestureDetector(
        onHorizontalDragUpdate: isHorizontal ? null : dragCallback,
        onVerticalDragUpdate: isHorizontal ? dragCallback : null,
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
