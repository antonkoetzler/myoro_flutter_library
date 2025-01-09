import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroRadioNotifier].
void main() {
  test('MyoroRadioNotifier constructor', () {
    expect(MyoroRadioNotifier().enabled, isFalse);
    expect(MyoroRadioNotifier(false).enabled, isFalse);
    expect(MyoroRadioNotifier(true).enabled, isTrue);
  });

  test('MyoroRadioNotifier.toggle', () {
    expect((MyoroRadioNotifier()..toggle()).enabled, isTrue);
    expect(
        (MyoroRadioNotifier()
              ..toggle()
              ..toggle())
            .enabled,
        isFalse);
  });
}
