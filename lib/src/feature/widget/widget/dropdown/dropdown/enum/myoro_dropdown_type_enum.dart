import 'package:faker/faker.dart';

/// Enum encapsulating every type of dropdown type that can be used in [MyoroDropdown].
enum MyoroDropdownTypeEnum {
  /// Displays below the dropdown's input and is an [Overlay].
  overlay,

  /// Displays below the dropdown's input and increases the height of the dropdown itself.
  expanding,

  /// Displays a modal of the options.
  modal,

  /// Displays a bottom sheet.
  bottomSheet;

  // coverage:ignore-start
  factory MyoroDropdownTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
  // coverage:ignore-end

  /// Whether the dropdown is [overlay].
  bool get isOverlay {
    return this == overlay;
  }

  /// Whether the dropdown is [expanding.
  bool get isExpanding {
    return this == expanding;
  }

  /// Whether the dropdown is [modal].
  bool get isModal {
    return this == modal;
  }

  /// Whether the dropdown is [bottomSheet].
  bool get isBottomSheet {
    return this == bottomSheet;
  }
}
