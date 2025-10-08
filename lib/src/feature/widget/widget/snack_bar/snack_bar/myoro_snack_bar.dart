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
  /// Configuration.
  final MyoroSnackBarConfiguration configuration;

  /// Style.
  final MyoroSnackBarStyle style;

  const MyoroSnackBar({super.key, required this.configuration, this.style = const MyoroSnackBarStyle()});

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();
    final borderWidth = style.borderWidth ?? themeExtension.borderWidth;
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;
    final primaryColor = style.primaryColor ?? themeExtension.primaryColor;
    final padding = style.padding ?? themeExtension.padding ?? EdgeInsets.zero;
    final borderRadius = style.borderRadius ?? themeExtension.borderRadius;

    final String message = configuration.message;
    final Widget? child = configuration.child;

    return Provider.value(
      value: style,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          border: borderWidth == null
              ? null
              : Border.all(width: borderWidth, color: configuration.snackBarType.getColor(context)),
          borderRadius: borderRadius,
        ),
        padding: padding,
        child: Row(
          spacing: spacing,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (message.isNotEmpty) Flexible(child: _Message(configuration.snackBarType, message)),
            if (child != null) Flexible(child: child),
            if (configuration.showCloseButton) _CloseButton(configuration.snackBarType),
          ],
        ),
      ),
    );
  }
}
