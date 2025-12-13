part of 'myoro_scrollable_view_model.dart';

/// State of [MyoroScrollableViewModel].
@immutable
sealed class MyoroScrollableState {
  /// Default constructor.
  MyoroScrollableState(
    ScrollController? scrollController,
    this.direction,
    this.reverse,
    this.clipBehavior,
    this.dragStartBehavior,
    this.physics,
  ) {
    this.scrollController = scrollController ?? (_localScrollController ??= ScrollController());
    _displayGradientController = ValueNotifier(this.scrollController.canScroll);
  }

  /// Local [ScrollController].
  late final ScrollController? _localScrollController;

  /// [ScrollController].
  late final ScrollController scrollController;

  /// [Axis].
  final Axis direction;

  /// Reversed.
  final bool reverse;

  /// Clip behavior.
  final Clip clipBehavior;

  /// Drag start behavior.
  final DragStartBehavior dragStartBehavior;

  /// Physics.
  final ScrollPhysics? physics;

  /// [ValueNotifier] controlling if the gradients should be shown.
  late final ValueNotifier<bool> _displayGradientController;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _localScrollController?.dispose();
    _displayGradientController.dispose();
  }

  /// [_displayGradientController] getter.
  ValueNotifier<bool> get displayGradientController {
    return _displayGradientController;
  }

  /// Getter of [_displayGradientController]'s value.
  bool get displayGradient {
    return displayGradientController.value;
  }

  /// [_displayGradientController] setter.
  set displayGradient(bool displayGradient) {
    displayGradientController.value = displayGradient;
  }
}
