part of '../myoro_button.dart';

/// Controller of [MyoroButton].
abstract class MyoroButtonController {
  /// Configuration.
  MyoroButtonConfiguration? _configuration;

  /// [ValueNotifier] managing the [MyoroTapStatusEnum] of the [MyoroButton].
  final _tapStatusNotifier = ValueNotifier(MyoroTapStatusEnum.idle);

  /// Dispose function.
  void dispose() {
    _tapStatusNotifier.dispose();
  }

  /// Callback executed when the [MyoroButton] is hovered over.
  void onEnter(_);

  /// Callback executed when the [MyoroButton] is hovered then exited.
  void onExit(_);

  /// Callback executed when the [MyoroButton] is tapped.
  void onTapDown(TapDownDetails details);

  /// Callback executed when the [MyoroButton] is tapped then released.
  void onTapUp(TapUpDetails details);

  /// Callback executed when a [MyoroButton] is tapped then cancelled.
  void onTapCancel();
}
