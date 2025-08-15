import 'package:faker/faker.dart';

/// Enum encapsulating the principle states of a tap.
enum MyoroTapStatusEnum {
  /// Not being interacted with.
  idle,

  /// Being hovered (desktop only).
  hover,

  /// Being tapped/pressed.
  tap;

  // coverage:ignore-start
  factory MyoroTapStatusEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
  // coverage:ignore-end

  bool get isIdle => this == idle;
  bool get isHover => this == hover;
  bool get isTap => this == tap;
}
