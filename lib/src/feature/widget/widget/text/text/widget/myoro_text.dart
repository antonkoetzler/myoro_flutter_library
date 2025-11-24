import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Text [Widget] of MFL.
class MyoroText extends StatelessWidget {
  /// Default constructor.
  const MyoroText(this.text, {super.key, this.style});

  /// Text.
  final String text;

  /// Style.
  final MyoroTextStyle? style;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTextThemeExtension>();
    final maxLines = style?.maxLines ?? themeExtension.maxLines;
    final overflow = style?.overflow ?? themeExtension.overflow;
    final alignment = style?.alignment ?? themeExtension.alignment;
    final textStyle = style?.style ?? themeExtension.style;
    return Text(text, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: textStyle);
  }
}
