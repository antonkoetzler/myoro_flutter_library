import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Icon [Widget] of MFL.
@immutable
class MyoroIcon extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroIconStyle();

  /// Default constructor.
  const MyoroIcon(this.icon, {super.key, this.style});

  /// Icon.
  final IconData icon;

  /// Style.
  final MyoroIconStyle? style;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconThemeExtension>();
    final iconSize = style?.size ?? themeExtension.size;
    final iconColor = style?.color ?? themeExtension.color;
    return Icon(icon, size: iconSize, color: iconColor);
  }
}
