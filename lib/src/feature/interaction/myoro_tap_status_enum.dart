import 'package:faker/faker.dart' hide Color;

/// Enum encapsulating the principle states of a tap.
enum MyoroTapStatusEnum {
  /// Not being interacted with.
  idle,

  /// Being hovered (desktop only).
  hover,

  /// Being tapped/pressed.
  tap;

  factory MyoroTapStatusEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isIdle => this == idle;
  bool get isHover => this == hover;
  bool get isTap => this == tap;
}
