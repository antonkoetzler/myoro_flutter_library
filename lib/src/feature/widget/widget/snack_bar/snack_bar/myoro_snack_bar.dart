import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_close_button.dart';
part '_widget/_message.dart';

/// A snack bar [Widget].
///
/// Differs from [MyoroSnackBarContainer] as [MyoroSnackBar] is the
/// snack bar that will be displayed within a [MyoroSnackBarContainer].
///
/// Two main "modes": Providing a [Widget] or a simple [String] message for the content.
class MyoroSnackBar extends StatelessWidget {
  const MyoroSnackBar({
    super.key,
    this.snackBarType = MyoroSnackBarTypeEnum.standard,
    this.showCloseButton = true,
    this.message = '',
    this.child,
    this.style = const MyoroSnackBarStyle(),
  }) : assert((message.length > 0) ^ (child != null), '[MyoroSnackBar]: [message] (x)or [child] must be provided.');

  /// Type of snack bar dialog.
  final MyoroSnackBarTypeEnum snackBarType;

  /// Whether or not to display [_CloseButton].
  final bool showCloseButton;

  /// [String] content mode of the snack bar.
  final String message;

  /// [Widget] content mode of the snack bar.
  final Widget? child;

  /// Style of the snack bar.
  final MyoroSnackBarStyle style;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();
    final borderWidth = style.borderWidth ?? themeExtension.borderWidth;
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;
    final primaryColor = style.primaryColor ?? themeExtension.primaryColor;
    final padding = style.padding ?? themeExtension.padding ?? EdgeInsets.zero;
    final borderRadius = style.borderRadius ?? themeExtension.borderRadius;

    return Provider.value(
      value: style,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          border: borderWidth == null ? null : Border.all(width: borderWidth, color: snackBarType.getColor(context)),
          borderRadius: borderRadius,
        ),
        padding: padding,
        child: Row(
          spacing: spacing,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (message.isNotEmpty) Flexible(child: _Message(snackBarType, message)),
            if (child != null) Flexible(child: child!),
            if (showCloseButton) _CloseButton(snackBarType),
          ],
        ),
      ),
    );
  }
}
