import 'package:faker/faker.dart' hide Color;

/// Enum encapsulating every type of dropdown type that can be used in [MyoroSearchDropdown].
enum MyoroSearchDropdownDropdownTypeEnum {
  /// Displays below the dropdown's input and is an [Overlay].
  overlay,

  /// Displays below the dropdown's input and increases the height of the dropdown itself.
  expanding;

  /// Fake constructor.
  factory MyoroSearchDropdownDropdownTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Whether the dropdown is [overlay].
  bool get isOverlay {
    return this == overlay;
  }

  /// Whether the dropdown is [expanding.
  bool get isExpanding {
    return this == expanding;
  }
}
