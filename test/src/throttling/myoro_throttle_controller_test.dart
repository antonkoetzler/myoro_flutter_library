import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroThrottleController', () async {
    final throttle = MyoroThrottleController(duration: const Duration(milliseconds: 100));
    int callCount = 0;

    void callback() => callCount++;

    // Should run.
    unawaited(throttle.throttle(callback));
    expect(callCount, 1);

    // Shouldn't run, throttle duration still running.
    unawaited(throttle.throttle(callback));
    expect(callCount, 1);

    // Should run after the duration is over.
    await Future.delayed(const Duration(milliseconds: 200));
    unawaited(throttle.throttle(callback));
    expect(callCount, 2);
  });
}
