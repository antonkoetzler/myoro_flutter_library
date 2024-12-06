import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the hover of the button changes.
typedef MyoroHoverButtonOnHover = Function(bool hovered);

/// Builder of the [MyoroHoverButton] to pass if the button is being hovered.
typedef MyoroHoverButtonBuilder = Widget Function(bool hovered, Color contentColor, Color backgroundColor);

/// Hover button of the design system.
///
/// Should be avoided by using pre-built hover buttons like [IconTextMyoroHoverButton].
/// However, if you need to create a complex hover button, use a [MyoroHoverButton].
final class MyoroHoverButton extends StatefulWidget {
  /// Color of the border & background when hovered.
  final Color? contentColor;

  /// Color of the background when not hovered.
  final Color? backgroundColor;

  /// If the button will already be hovered (there will be no hover effect).
  final bool? isHovered;

  /// Builds a rounded border if [true]; no border if [false].
  final bool? bordered;

  /// Border radius of the background.
  final BorderRadius? borderRadius;

  /// Tooltip message of the button.
  final String? tooltip;

  /// Function executed when the hover of the button changes.
  final MyoroHoverButtonOnHover? onHover;

  /// Function executed when the button is clicked.
  final VoidCallback? onPressed;

  /// Builder of the [MyoroHoverButton] to pass if the button is being hovered.
  final MyoroHoverButtonBuilder builder;

  const MyoroHoverButton({
    super.key,
    this.contentColor,
    this.backgroundColor,
    this.isHovered,
    this.bordered,
    this.borderRadius,
    this.tooltip,
    this.onHover,
    this.onPressed,
    required this.builder,
  });

  @override
  State<MyoroHoverButton> createState() => _MyoroHoverButtonState();
}

final class _MyoroHoverButtonState extends State<MyoroHoverButton> {
  Color? get _contentColor => widget.contentColor;
  Color? get _backgroundColor => widget.backgroundColor;
  bool? get _isHovered => widget.isHovered;
  bool? get _bordered => widget.bordered;
  BorderRadius? get _borderRadius => widget.borderRadius;
  String? get _tooltip => widget.tooltip;
  MyoroHoverButtonOnHover? get _onHover => widget.onHover;
  VoidCallback? get _onPressed => widget.onPressed;
  MyoroHoverButtonBuilder get _builder => widget.builder;

  final _hoverNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _hoverNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroHoverButtonThemeExtension>();

    return MyoroTooltip(
      text: _tooltip,
      child: InkWell(
        focusColor: MyoroColorTheme.transparent,
        hoverColor: MyoroColorTheme.transparent,
        splashColor: MyoroColorTheme.transparent,
        highlightColor: MyoroColorTheme.transparent,
        onTap: () {
          if (_onPressed == null) return;
          // Visual feedback that the button was clicked.
          _hoverNotifier.value = false;
          _onPressed?.call();
        },
        onHover: (bool hovered) {
          if (_onPressed == null) return;
          _hoverNotifier.value = hovered;
          _onHover?.call(hovered);
        },
        child: ValueListenableBuilder(
          valueListenable: _hoverNotifier,
          builder: (_, bool hovered, __) {
            final contentColor = _contentColor ?? themeExtension.contentColor;
            final backgroundColor = _backgroundColor ?? themeExtension.backgroundColor;

            // So we may add a slight tint on hover when [_isHovered] is [true].
            late final Color correctedBackgroundColor;
            if (_isHovered == true) {
              correctedBackgroundColor = hovered ? contentColor.withAlpha(225) : contentColor;
            } else {
              correctedBackgroundColor = hovered ? contentColor : backgroundColor;
            }

            return Container(
              decoration: BoxDecoration(
                border: (_bordered ?? themeExtension.bordered)
                    ? Border.all(
                        width: 2,
                        color: hovered ? backgroundColor : contentColor,
                      )
                    : null,
                borderRadius: _borderRadius ?? themeExtension.borderRadius,
                color: correctedBackgroundColor,
              ),
              child: _builder(hovered, contentColor, backgroundColor),
            );
          },
        ),
      ),
    );
  }
}
