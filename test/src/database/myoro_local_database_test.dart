import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const fileName = 'myoro';
  const path = './';

  group('MyoroLocalDatabase.instance', () {
    test('MyoroLocalDatabase.instance not initialized assertion case', () {
      expect(() => MyoroLocalDatabase.instance, throwsAssertionError);
    });
  });

  group('MyoroLocalDatabase.initialize', () {
    setUp(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
        const MethodChannel('plugins.flutter.io/path_provider'),
        (methodCall) async {
          return methodCall.method == 'getApplicationSupportDirectory' ? path : null;
        },
      );
    });

    test('Minimal MyoroLocalDatabase.initialize case', () async {
      await MyoroLocalDatabase.initialize(fileName: fileName);
      expect(() => MyoroLocalDatabase.instance, returnsNormally);
      MyoroLocalDatabase.instance.close();
    });

    test('MyoroLocalDatabase.initialize with path argument provided.', () async {
      await MyoroLocalDatabase.initialize(fileName: fileName, path: path);
      expect(() => MyoroLocalDatabase.instance, returnsNormally);
      MyoroLocalDatabase.instance.close();
    });
  });
}
