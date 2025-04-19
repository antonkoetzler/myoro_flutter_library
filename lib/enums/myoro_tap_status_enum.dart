/// Enum encapsulating the principle states of a tap.
///
/// TODO: Needs to be tested.
enum MyoroTapStatusEnum {
  /// Not being interacted with.
  idle,

  /// Being hovered (desktop only).
  hover,

  /// Being tapped/pressed.
  tap;

  bool get isIdle => this == idle;
  bool get isHover => this == hover;
  bool get isTap => this == tap;
}
