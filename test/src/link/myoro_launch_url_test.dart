import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  const MethodChannel channel = MethodChannel('plugins.flutter.io/url_launcher');
  const testUrl = 'https://example.com';
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('returns false when canLaunchUrl is false', () async {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, (MethodCall call) async {
      if (call.method == 'canLaunch') return false;
      return null;
    });

    final result = await myoroLaunchUrl(testUrl);
    expect(result, isFalse);
  });

  test('returns true when launchUrl succeeds', () async {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, (MethodCall call) async {
      if (call.method == 'canLaunch') return true;
      if (call.method == 'launch') return true;
      return null;
    });

    final result = await myoroLaunchUrl(testUrl);
    expect(result, isTrue);
  });

  test('returns false when launchUrl throws', () async {
    assert(() {
      expect(kDebugMode, isTrue);
      return true;
    }());

    binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, (MethodCall call) async {
      if (call.method == 'canLaunch') return true;
      if (call.method == 'launch') throw PlatformException(code: 'ERROR');
      return null;
    });

    final result = await myoroLaunchUrl(testUrl);
    expect(result, isFalse);
  });
}
