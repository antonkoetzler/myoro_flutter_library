import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Helper for programmatically opening snack bars
/// without having to type [ScaffoldMessenger.of(context)].
final class MyoroSnackBarHelper {
  static void showSnackBar(
    BuildContext context, {
    Duration? duration,
    required MyoroSnackBar snackBar,
  }) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        MyoroSnackBarContainer(
          themeExtension: context
              .resolveThemeExtension<MyoroSnackBarContainerThemeExtension>(),
          duration: duration,
          snackBar: snackBar,
        ),
      );
  }

  static void hideSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}
