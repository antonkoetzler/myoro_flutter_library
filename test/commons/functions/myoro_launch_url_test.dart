import 'package:faker/faker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void _setupUrlLauncherMethodHandler({required bool canLaunch}) {
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(
    const MethodChannel('plugins.flutter.io/url_launcher'),
    (MethodCall methodCall) async {
      return switch (methodCall.method) {
        'canLaunch' => canLaunch,
        'launch' => true,
        _ => throw PlatformException(
            code: 'Unimplemented', details: 'Method not implemented'),
      };
    },
  );
}

/// Sanity test of [myoroLaunchUrl].
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('myoroLaunchUrl', () async {
    _setupUrlLauncherMethodHandler(canLaunch: false);
    expect(await myoroLaunchUrl(faker.lorem.word()), isFalse);

    _setupUrlLauncherMethodHandler(canLaunch: true);
    expect(await myoroLaunchUrl(faker.lorem.word()), isTrue);
  });
}
