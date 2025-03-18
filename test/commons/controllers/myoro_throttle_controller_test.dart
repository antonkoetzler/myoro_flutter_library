import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test for [MyoroThrottleController].
void main() {
  const duration = Duration(seconds: 1);

  int value = 0;

  void incrementValue() => value += 1;

  test('MyoroThrottleController.run', () async {
    final throttler = MyoroThrottleController(duration: duration);
    throttler.run(incrementValue);
    expect(value, 1); // Successfully ran the callback.
    throttler.run(incrementValue);
    expect(
      value,
      1,
    ); // Did not run the callback as [throttler] is throttling callbacks.
    await Future.delayed(
      Duration(milliseconds: duration.inMilliseconds + 2),
    ); // Not too sure why we need to wait an extra 2 milliseconds...
    throttler.run(incrementValue);
    expect(
      value,
      2,
    ); // After waiting for the [throttler]'s duration, the callback will execute again.
  });
}
