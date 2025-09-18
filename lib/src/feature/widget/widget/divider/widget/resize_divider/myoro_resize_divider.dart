import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_resize_button.dart';

/// A divider with a click/tap + drag resize functionality.
class MyoroResizeDivider extends StatelessWidget {
  const MyoroResizeDivider(this._direction, {super.key, this.dragCallback, this.themeExtension});

  /// [Axis]
  final Axis _direction;

  /// Resize activated callback.
  final MyoroResizeDividerDragCallback? dragCallback;

  /// Theme extension.
  final MyoroResizeDividerThemeExtension? themeExtension;

  @override
  Widget build(context) {
    final colorScheme = context.colorScheme;
    final basicDividerThemeExtension = MyoroBasicDividerThemeExtension.builder(colorScheme);
    final themeExtension =
        this.themeExtension ?? MyoroResizeDividerThemeExtension.builder(basicDividerThemeExtension, colorScheme);

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: Stack(
        alignment: Alignment.center,
        children: [
          MyoroBasicDivider(
            _direction,
            themeExtension: MyoroBasicDividerThemeExtension.fromResizeDividerThemeExtension(themeExtension),
          ),
          _ResizeButton(_direction, dragCallback),
        ],
      ),
    );
  }
}
