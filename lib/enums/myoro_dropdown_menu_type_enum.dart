import 'package:flutter/material.dart';

/// Enum encapsulating all available [Widget] composition types of
/// the dropdown menu in [MyoroSingularDropdown]/[MyoroMultiDropdown].
///
/// TODO: Needs to be tested.
enum MyoroDropdownMenuTypeEnum {
  /// Displays below the dropdown's input and is an [Overlay].
  overlay,

  /// Displays below the dropdown's input and increases the height of the dropdown itself.
  expanding,

  /// Displays a modal of the options.
  modal;

  bool get isOverlay => (this == overlay);
  bool get isExpanding => (this == expanding);
  bool get isModal => (this == modal);
}
