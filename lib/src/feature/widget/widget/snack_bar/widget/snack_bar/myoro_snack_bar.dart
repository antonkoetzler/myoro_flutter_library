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
    final resolvedThemeExtension = themeExtension ?? context.resolveThemeExtension<MyoroSnackBarThemeExtension>();

    final String message = configuration.message;
    final Widget? child = configuration.child;

    final snackBarChild = Container(
      padding: resolvedThemeExtension.padding,
      decoration: BoxDecoration(
        color: resolvedThemeExtension.primaryColor,
        border: Border.all(
          width: resolvedThemeExtension.borderWidth,
          color: configuration.snackBarType.getColor(context),
        ),
        borderRadius: resolvedThemeExtension.borderRadius,
      ),
      child: Row(
        spacing: resolvedThemeExtension.spacing,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (message.isNotEmpty) Flexible(child: _Message(configuration.snackBarType, message)),
          if (child != null) Flexible(child: child),
          if (configuration.showCloseButton) _CloseButton(configuration.snackBarType),
        ],
      ),
    );

    return MyoroSingularThemeExtensionWrapper(themeExtension: resolvedThemeExtension, child: snackBarChild);
  }
}
