import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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

  /// Theme extension.
  final MyoroSnackBarThemeExtension? themeExtension;

  const MyoroSnackBar({super.key, required this.configuration, this.themeExtension});

  @override
  Widget build(context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final themeExtension = this.themeExtension ?? MyoroSnackBarThemeExtension.builder(colorScheme, textTheme);
    final borderWidth = themeExtension.borderWidth;
    final spacing = themeExtension.spacing ?? 0;

    final String message = configuration.message;
    final Widget? child = configuration.child;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: Container(
        padding: themeExtension.padding,
        decoration: BoxDecoration(
          color: themeExtension.primaryColor,
          border: borderWidth == null
              ? null
              : Border.all(width: borderWidth, color: configuration.snackBarType.getColor(context)),
          borderRadius: themeExtension.borderRadius,
        ),
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
