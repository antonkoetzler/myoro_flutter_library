import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();

    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      const MethodChannel('plugins.flutter.io/shared_preferences'),
      (MethodCall methodCall) async {
        switch (methodCall.method) {
          case 'setBool':
            return true;
          default:
            return null;
        }
      },
    );
  });

  test('initializeStoryboard', () async {
    await initializeStoryboard();
  });
}
