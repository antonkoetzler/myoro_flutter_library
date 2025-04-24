import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Helper to get decorations in [Widget]s such as borders and border radiuses.
///
/// TODO: This helper kind of sucks. Kill it.
final class MyoroDecorationHelper {
  /// Default [BorderRadius].
  static final borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength);

  /// Default [BorderRadius] for inputs.
  static final inputBorderRadius = BorderRadius.circular(
    kMyoroInputBorderLength,
  );

  /// Default [Border] for a, for example, [Container].
  static Border border(BuildContext context) {
    return Border.all(
      width: 2,
      color: MyoroColorDesignSystem.secondary(context),
    );
  }
}
