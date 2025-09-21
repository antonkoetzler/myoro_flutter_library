import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('myoroFallbackLerp', () {
    test('returns primary when t < 0.5', () {
      final result = myoroFallbackLerp<int>(1, 2, 0.3);
      expect(result, 1);
    });

    test('returns other when t >= 0.5', () {
      final result = myoroFallbackLerp<int>(1, 2, 0.5);
      expect(result, 2);
    });

    test('returns null when both primary and other are null', () {
      final result = myoroFallbackLerp<String>(null, null, 0.7);
      expect(result, null);
    });

    test('returns primary when other is null and t < 0.5', () {
      final result = myoroFallbackLerp<String>('a', null, 0.1);
      expect(result, 'a');
    });

    test('returns other when primary is null and t >= 0.5', () {
      final result = myoroFallbackLerp<String>(null, 'b', 0.9);
      expect(result, 'b');
    });
  });
}
