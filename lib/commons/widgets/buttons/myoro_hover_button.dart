import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of the [MyoroHoverButton] to pass if the button is being hovered.
typedef MyoroHoverButtonBuilder = Function(bool hovered);

/// Hover button of the design system.
///
/// Should be avoided by using pre-built hover buttons like [IconTextMyoroHoverButton].
/// However, if you need to create a complex hover button, use a [MyoroHoverButton].
final class MyoroHoverButton extends StatefulWidget {
  /// Color of the border & background when hovered.
  final Color? contentColor;

  /// Color of the background when not hovered.
  final Color? backgroundColor;

  /// Builds a rounded border if [true]; no border if [false].
  final bool? bordered;

  /// Border radius of the background.
  final BorderRadius? borderRadius;

  /// Function executed when the button is clicked.
  final VoidCallback onPressed;

  /// Builder of the [MyoroHoverButton] to pass if the button is being hovered.
  final MyoroHoverButtonBuilder builder;

  const MyoroHoverButton({
    super.key,
    this.contentColor,
    this.backgroundColor,
    this.bordered,
    this.borderRadius,
    required this.onPressed,
    required this.builder,
  });

  @override
  State<MyoroHoverButton> createState() => _MyoroHoverButtonState();
}

final class _MyoroHoverButtonState extends State<MyoroHoverButton> {
  Color? get _contentColor => widget.contentColor;
  Color? get _backgroundColor => widget.backgroundColor;
  bool? get _bordered => widget.bordered;
  BorderRadius? get _borderRadius => widget.borderRadius;
  VoidCallback get _onPressed => widget.onPressed;
  MyoroHoverButtonBuilder get _builder => widget.builder;

  final _hoverNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _hoverNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: MyoroColorTheme.transparent,
      hoverColor: MyoroColorTheme.transparent,
      splashColor: MyoroColorTheme.transparent,
      onTap: _onPressed,
      onHover: (hovered) => _hoverNotifier.value = hovered,
      child: ValueListenableBuilder(
        valueListenable: _hoverNotifier,
        builder: (_, bool hovered, __) {
          final themeExtension = context.resolveThemeExtension<MyoroHoverButtonThemeExtension>();
          final contentColor = _contentColor ?? themeExtension.contentColor;
          final backgroundColor = _backgroundColor ?? themeExtension.backgroundColor;

          return Container(
            decoration: BoxDecoration(
              border: (_bordered ?? themeExtension.bordered)
                  ? Border.all(
                      width: 2,
                      color: hovered ? backgroundColor : contentColor,
                    )
                  : null,
              borderRadius: _borderRadius ?? themeExtension.borderRadius,
              color: hovered ? contentColor : backgroundColor,
            ),
            child: _builder(hovered),
          );
        },
      ),
    );
  }
}
