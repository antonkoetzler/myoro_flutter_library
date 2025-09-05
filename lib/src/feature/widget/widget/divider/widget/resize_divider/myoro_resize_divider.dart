import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_resize_button.dart';

/// A divider with a click/tap + drag resize functionality.
class MyoroResizeDivider extends StatelessWidget {
  const MyoroResizeDivider(
    this._direction, {
    super.key,
    this.dragCallback,
    this.style = const MyoroResizeDividerStyle(),
  });

  /// [Axis]
  final Axis _direction;

  /// Resize activated callback.
  final MyoroResizeDividerDragCallback? dragCallback;

  /// Style.
  final MyoroResizeDividerStyle style;

  @override
  Widget build(context) {
    return InheritedProvider.value(
      value: style,
      child: Stack(
        alignment: Alignment.center,
        children: [
          MyoroBasicDivider(_direction, style: style),
          _ResizeButton(_direction, dragCallback),
        ],
      ),
    );
  }
}
