import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum encapsulating all available [Widget] composition types of
/// the dropdown menu in [MyoroSingleSelectionDropdown]/[MyoroMultiSelectionDropdown].
///
/// TODO: Delete this.
enum MyoroSelectionDropdownMenuTypeEnum {
  /// Displays below the dropdown's input and is an [Overlay].
  overlay,

  /// Displays below the dropdown's input and increases the height of the dropdown itself.
  expanding,

  /// Displays a modal of the options.
  modal;

  // coverage:ignore-start
  factory MyoroSelectionDropdownMenuTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
  // coverage:ignore-end

  bool get isOverlay => (this == overlay);
  bool get isExpanding => (this == expanding);
  bool get isModal => (this == modal);
}
