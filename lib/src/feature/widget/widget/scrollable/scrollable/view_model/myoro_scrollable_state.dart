part of 'myoro_scrollable_view_model.dart';

/// State of [MyoroScrollableViewModel].
sealed class MyoroScrollableState {
  /// Default constructor.
  MyoroScrollableState(
    ScrollController? scrollController,
    this.direction,
    this.thumbVisibility,
    this.reverse,
    this.clipBehavior,
    this.dragStartBehavior,
    this.physics,
  ) {
    this.scrollController = scrollController ?? (_localScrollController ??= ScrollController());
  }

  /// Local [ScrollController].
  ScrollController? _localScrollController;

  /// [ScrollController].
  late final ScrollController scrollController;

  /// [Axis].
  final Axis direction;

  /// Whether or not the scrollbar should always be shown when the scrollable is scrollable.
  final bool thumbVisibility;

  /// Reversed.
  final bool reverse;

  /// Clip behavior.
  final Clip clipBehavior;

  /// Drag start behavior.
  final DragStartBehavior dragStartBehavior;

  /// Physics.
  final ScrollPhysics? physics;

  /// [ValueNotifier] controlling if we can display the starting gradient.
  ///
  /// By starting gradient, I mean the top of the scrollable if vertical, and left if horizontal.
  final _displayStartingGradientController = ValueNotifier(false);

  /// [ValueNotifier] controlling if we can display the ending gradient.
  ///
  /// By ending gradient, I mean the bottom of the scrollable if vertical, and right if horizontal.
  final _displayEndingGradientController = ValueNotifier(false);

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _localScrollController?.dispose();
    _displayStartingGradientController.dispose();
    _displayEndingGradientController.dispose();
  }

  /// [_displayStartingGradientController] getter.
  ValueNotifier<bool> get displayStartingGradientController {
    return _displayStartingGradientController;
  }

  /// Getter of [_displayStartingGradientController]'s value.
  bool get displayStartingGradient {
    return _displayStartingGradientController.value;
  }

  /// [_displayEndingGradientController] getter.
  ValueNotifier<bool> get displayEndingGradientController {
    return _displayEndingGradientController;
  }

  /// Getter of [_displayEndingGradientController]'s value.
  bool get displayEndingGradient {
    return _displayEndingGradientController.value;
  }

  /// [_displayStartingGradientController] setter.
  set displayStartingGradient(bool value) {
    _displayStartingGradientController.value = value;
  }

  /// [_displayEndingGradientController] setter.
  set displayEndingGradient(bool value) {
    _displayEndingGradientController.value = value;
  }
}
