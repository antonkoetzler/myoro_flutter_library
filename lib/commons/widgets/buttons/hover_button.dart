import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of the [HoverButton] to pass if the button is being hovered.
typedef HoverButtonBuilder = Function(bool hovered);

/// Hover button of the design system.
///
/// Should be avoided by using pre-built hover buttons like [IconTextHoverButton].
/// However, if you need to create a complex hover button, use a [HoverButton].
final class HoverButton extends StatefulWidget {
  /// Color of the border & background when hovered.
  final Color? contentColor;

  /// Color of the background when not hovered.
  final Color? backgroundColor;

  /// Builds a rounded border if [true]; no border if [false].
  final bool? bordered;

  /// Function executed when the button is clicked.
  final VoidCallback onPressed;

  /// Builder of the [HoverButton] to pass if the button is being hovered.
  final HoverButtonBuilder builder;

  const HoverButton({
    super.key,
    this.contentColor,
    this.backgroundColor,
    this.bordered,
    required this.onPressed,
    required this.builder,
  });

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

final class _HoverButtonState extends State<HoverButton> {
  Color? get _contentColor => widget.contentColor;
  Color? get _backgroundColor => widget.backgroundColor;
  bool? get _bordered => widget.bordered;
  VoidCallback get _onPressed => widget.onPressed;
  HoverButtonBuilder get _builder => widget.builder;

  final _hoverNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _hoverNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: ColorDesignSystem.transparent,
      hoverColor: ColorDesignSystem.transparent,
      splashColor: ColorDesignSystem.transparent,
      onTap: _onPressed,
      onHover: (hovered) => _hoverNotifier.value = hovered,
      child: ValueListenableBuilder(
        valueListenable: _hoverNotifier,
        builder: (_, bool hovered, __) {
          final secondary = ColorDesignSystem.secondary(context);
          final contentColor = _contentColor ?? secondary;
          final backgroundColor = _backgroundColor ?? Colors.transparent;

          return Container(
            decoration: BoxDecoration(
              border: (_bordered ?? false) ? Border.all(width: 2, color: hovered ? backgroundColor : contentColor) : null,
              borderRadius: kBorderRadius,
              color: hovered ? contentColor : backgroundColor,
            ),
            child: _builder(hovered),
          );
        },
      ),
    );
  }
}
