import 'dart:async';

import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function to throttle a function
///
/// Initially, it executes the callback. If [throttle] is called again before
/// [duration] or [kMyoroThrottleDuration], [callback] will not be executed.
Future<Function> throttle(Function callback, [Duration? duration]) async {
  Timer? timer;
  return () {
    if (timer?.isActive ?? false) return;
    timer = Timer(
      duration ?? kMyoroThrottleDuration,
      () async => await callback.call(),
    );
  };
}
