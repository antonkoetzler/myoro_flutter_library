import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test for [myoroLerp].
void main() {
  test('myoroLerp', () {
    const primary = 1, other = 2;
    for (double i = 0; i < 1; i += 0.01) {
      expect(
        myoroLerp(primary, other, i),
        i < 0.5 ? primary : other,
      );
    }
  });
}
