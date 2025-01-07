import 'dart:async';

import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Class to throttle a function
///
/// Executes a callback with [run]. If [run] is called again before the
/// set [duration] has passed, [run.callback] will not be executed.
///
/// To use this class, just create a variable of it and start calling [run]!
final class MyoroThrottleController {
  /// [Duration] to be awaited after unthrottled [run] execution.
  final Duration duration;

  /// [bool] to track whether or not the [MyoroThrottleController] is throttling callbacks.
  bool _isThrottled = false;

  MyoroThrottleController({this.duration = kMyoroThrottleDuration});

  Future<void> run(Function callback) async {
    if (_isThrottled) return;
    _isThrottled = true;
    await callback();
    await Future.delayed(duration);
    print('reached');
    _isThrottled = false;
  }
}
