import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroDebounceController.debounce', () async {
    const duration = Duration(milliseconds: 500);
    final controller = MyoroDebounceController(duration);
    bool executed = false;
    controller.debounce(() => executed = true);
    await Future.delayed(Duration(milliseconds: duration.inMilliseconds ~/ 2));
    expect(executed, isFalse);
    await Future.delayed(Duration(milliseconds: duration.inMilliseconds ~/ 2));
    expect(executed, isTrue);
    controller.dispose();
  });
}
