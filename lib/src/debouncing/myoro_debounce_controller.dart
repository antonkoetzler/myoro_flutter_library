import 'dart:async';
import 'dart:ui';

import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Debounce controller.
///
/// Example use:
/// ```dart
/// final class _FooState extends State<Foo> {
///   final _debounceController = MyoroDebounceController(const Duration(seconds: 1));
///
///   ...
///
///   @override
///   void dispose() {
///     _debounceController.dispose();
///     super.dispose();
///   }
///
///   ...
/// }
/// ```
final class MyoroDebounceController {
  MyoroDebounceController([this._duration]);

  /// [Duration] to wait before the callback is ran.
  final Duration? _duration;

  /// Timer to control if a callback runs or not.
  Timer? _timer;

  /// Disposal guard variable.
  bool _isDisposed = false;

  /// Dispose function.
  void dispose() {
    _isDisposed = true;
    _disposeTimer();
  }

  /// Debounce function.
  void debounce(VoidCallback callback) {
    if (_isDisposed) return;
    _disposeTimer();
    _timer = Timer(_duration ?? kMyoroDebounceDuration, callback);
  }

  /// Helper function to reset [_timer] to null.
  void _disposeTimer() {
    _timer?.cancel();
    _timer = null;
  }
}
