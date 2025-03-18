import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroGroupRadioNotifier].
void main() {
  final int maxItems = faker.randomGenerator.integer(50);
  final int enabledRadioIndex = faker.randomGenerator.integer(maxItems);
  final radios = {
    for (int i = 0; i < maxItems; i++) '$i': i == enabledRadioIndex,
  };
  final notifier = MyoroGroupRadioNotifier(radios);

  tearDownAll(() => notifier.dispose());

  test('MyoroGroupRadio constructor assertions', () {
    expect(
      () => MyoroGroupRadioNotifier({'hello': true, 'world': true}),
      throwsAssertionError,
    );
    expect(
      () => MyoroGroupRadioNotifier({'hello': false, 'world': false}),
      throwsAssertionError,
    );
  });

  test('MyoroGroupRadio.toggle', () {
    final String enabledKey = radios.keys
        .elementAt(faker.randomGenerator.integer(radios.keys.length));
    notifier.enable(enabledKey);
    expect(notifier.enabledKey, enabledKey);
  });
}
