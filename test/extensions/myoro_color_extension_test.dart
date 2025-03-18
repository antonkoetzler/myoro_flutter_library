import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroColorExtension].
void main() {
  test('MyoroColorExtension.hexadecimalFormat', () {
    expect(Colors.black.hexadecimalFormat, '#000000');
    expect(Colors.white.hexadecimalFormat, '#FFFFFF');
    expect(const Color(0xFFEDE6D6).hexadecimalFormat, '#EDE6D6');
  });
}
