import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simple tooltip.
final class MyoroTooltip extends StatelessWidget {
  /// Margin [EdgeInsets] of the tooltip.
  final EdgeInsets? margin;

  /// Text of the tooltip.
  ///
  /// Nullable given that there could be senarios in which a tooltip conditionally shows.
  final String? text;

  /// [Widget] wrapping the tooltip.
  final Widget child;

  const MyoroTooltip({
    super.key,
    this.text,
    this.margin,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: text ?? '',
      waitDuration: context.resolveThemeExtension<MyoroTooltipThemeExtension>().waitDuration,
      margin: margin,
      child: child,
    );
  }
}
