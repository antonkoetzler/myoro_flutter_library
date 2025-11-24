import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_icon.dart';
part '../_widget/_text.dart';

/// Tag [Widget] of MFL.
class MyoroTag extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroTagStyle();

  /// Default value of [invert].
  static const invertDefaultValue = false;

  /// Default value of [text].
  static const textDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroTag({
    super.key,
    this.style = styleDefaultValue,
    this.invert = invertDefaultValue,
    this.icon,
    this.text = textDefaultValue,
  }) : assert(!(icon == null && text.length == 0), '[MyoroTag]: [icon] and/or [text] must be provided.');

  /// Style.
  final MyoroTagStyle style;

  /// Whether or not to invert the icon and text.
  final bool invert;

  /// Icon.
  final IconData? icon;

  /// Text.
  final String text;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTagThemeExtension>();
    final contentPadding = style.contentPadding ?? themeExtension.contentPadding;
    final backgroundColor = style.backgroundColor ?? themeExtension.backgroundColor;
    final borderRadius = style.borderRadius ?? themeExtension.borderRadius;
    final border = style.border ?? themeExtension.border;

    final iconIsNotNull = icon != null;
    final textIsNotEmpty = text.isNotEmpty;

    return Provider.value(
      value: style,
      child: Container(
        padding: contentPadding,
        decoration: BoxDecoration(color: backgroundColor, borderRadius: borderRadius, border: border),
        child: Row(
          children: invert
              ? [if (iconIsNotNull) _Icon(icon!), if (textIsNotEmpty) _Text(text)]
              : [if (iconIsNotNull) _Icon(icon!), if (textIsNotEmpty) _Text(text)],
        ),
      ),
    );
  }
}
