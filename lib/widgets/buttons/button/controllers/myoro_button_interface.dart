import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroButton].
abstract interface class MyoroButtonInterface {
  /// Dispose function.
  void dispose();

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
