import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroCheckboxNotifier].
void main() {
  test('MyoroCheckboxNotifier constructor', () {
    expect(MyoroCheckboxNotifier().enabled, isFalse);
    expect(MyoroCheckboxNotifier(false).enabled, isFalse);
    expect(MyoroCheckboxNotifier(true).enabled, isTrue);
  });

  test('MyoroCheckboxNotifier.toggle', () {
    expect((MyoroCheckboxNotifier()..toggle()).enabled, isTrue);
    expect(
        (MyoroCheckboxNotifier()
              ..toggle()
              ..toggle())
            .enabled,
        isFalse);
    expect((MyoroCheckboxNotifier()..toggle(false)).enabled, isFalse);
    expect((MyoroCheckboxNotifier()..toggle(true)).enabled, isTrue);
  });
}
