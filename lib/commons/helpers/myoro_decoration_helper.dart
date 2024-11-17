import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Helper to get decorations in [Widget]s such as borders and border radiuses.
final class MyoroDecorationHelper {
  /// Default [BorderRadius].
  static final borderRadius = BorderRadius.circular(kMyoroBorderRadius);

  /// Default [BorderRadius] for inputs.
  static final inputBorderRadius = BorderRadius.circular(10);

  /// Default [Border] for a, for example, [Container].
  static Border border(BuildContext context) {
    return Border.all(
      width: 2,
      color: MyoroColorTheme.secondary(context),
    );
  }
}
