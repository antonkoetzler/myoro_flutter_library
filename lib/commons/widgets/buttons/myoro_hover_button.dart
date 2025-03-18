import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of the [MyoroHoverButton] to pass if the button is being hovered.
typedef MyoroHoverButtonBuilder =
    Widget Function(bool hovered, Color primaryColor, Color onPrimaryColor);

/// Hover button of the design system.
///
/// Should be avoided by using pre-built hover buttons like [IconTextMyoroHoverButton].
/// However, if you need to create a complex hover button, use a [MyoroHoverButton].
final class MyoroHoverButton extends StatefulWidget {
  /// Configuration members.
  final MyoroHoverButtonConfiguration? configuration;

  /// Function executed when the button is clicked.
  final VoidCallback? onPressed;

  /// Builder of the [MyoroHoverButton] to pass if the button is being hovered.
  final MyoroHoverButtonBuilder builder;

  const MyoroHoverButton({
    super.key,
    this.configuration,
    this.onPressed,
    required this.builder,
  });

  static Finder finder({
    MyoroHoverButtonConfiguration? configuration,
    bool configurationEnabled = false,
    Color? primaryColor,
    bool primaryColorEnabled = false,
    Color? onPrimaryColor,
    bool onPrimaryColorEnabled = false,
    bool? isHovered,
    bool isHoveredEnabled = false,
    bool? bordered,
    bool borderedEnabled = false,
    BorderRadius? borderRadius,
    bool borderRadiusEnabled = false,
    String? tooltip,
    bool tooltipEnabled = false,
    MyoroHoverButtonOnHover? onHover,
    bool onHoverEnabled = false,
    VoidCallback? onPressed,
    bool onPressedEnabled = false,
    MyoroHoverButtonBuilder? builder,
    bool builderEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroHoverButton &&
          (configurationEnabled ? w.configuration == configuration : true) &&
          (primaryColorEnabled
              ? w.configuration?.primaryColor == primaryColor
              : true) &&
          (onPrimaryColorEnabled
              ? w.configuration?.onPrimaryColor == onPrimaryColor
              : true) &&
          (isHoveredEnabled ? w.configuration?.isHovered == isHovered : true) &&
          (borderedEnabled ? w.configuration?.bordered == bordered : true) &&
          (borderRadiusEnabled
              ? w.configuration?.borderRadius == borderRadius
              : true) &&
          (tooltipEnabled ? w.configuration?.tooltip == tooltip : true) &&
          (onHoverEnabled ? w.configuration?.onHover == onHover : true) &&
          (onPressedEnabled ? w.onPressed == onPressed : true) &&
          (builderEnabled ? w.builder == builder : true),
    );
  }

  @override
  State<MyoroHoverButton> createState() => _MyoroHoverButtonState();
}

final class _MyoroHoverButtonState extends State<MyoroHoverButton> {
  MyoroHoverButtonConfiguration? get _configuration => widget.configuration;
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
    final themeExtension =
        context.resolveThemeExtension<MyoroHoverButtonThemeExtension>();

    return MyoroTooltip(
      text: _configuration?.tooltip ?? '',
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
          _configuration?.onHover?.call(hovered);
        },
        child: ValueListenableBuilder(
          valueListenable: _hoverNotifier,
          builder: (_, bool hovered, __) {
            final onPrimaryColor =
                _configuration?.onPrimaryColor ?? themeExtension.onPrimaryColor;
            final primaryColor =
                _configuration?.primaryColor ?? themeExtension.primaryColor;

            // So we may add a slight tint on hover when [_isHovered] is [true].
            late final Color correctedBackgroundColor;
            if (_configuration?.isHovered == true) {
              correctedBackgroundColor =
                  hovered ? onPrimaryColor.withAlpha(225) : onPrimaryColor;
            } else {
              correctedBackgroundColor =
                  hovered ? onPrimaryColor : primaryColor;
            }

            return Container(
              decoration: BoxDecoration(
                border:
                    (_configuration?.bordered ?? themeExtension.bordered)
                        ? Border.all(width: 2, color: onPrimaryColor)
                        : null,
                borderRadius:
                    _configuration?.borderRadius ?? themeExtension.borderRadius,
                color: correctedBackgroundColor,
              ),
              child: _builder(hovered, primaryColor, onPrimaryColor),
            );
          },
        ),
      ),
    );
  }
}
