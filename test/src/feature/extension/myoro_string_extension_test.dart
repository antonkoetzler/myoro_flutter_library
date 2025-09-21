import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroStringExtension.capitalized', () {
    const text = 'hello, world!';
    expect(text.capitalized, 'Hello, World!');
  });
}
