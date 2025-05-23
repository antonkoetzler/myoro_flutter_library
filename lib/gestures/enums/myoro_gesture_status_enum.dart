import 'package:faker/faker.dart';

/// Enum encapsulating the principle states of a tap.
enum MyoroGestureStatusEnum {
  /// Not being interacted with.
  idle,

  /// Being hovered (desktop only).
  hover,

  /// Being tapped/pressed.
  tap;

  factory MyoroGestureStatusEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isIdle => this == idle;
  bool get isHover => this == hover;
  bool get isTap => this == tap;
}
