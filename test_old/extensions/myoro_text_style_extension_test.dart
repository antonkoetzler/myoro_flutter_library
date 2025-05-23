import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTextStyleExtension].
void main() {
  test('MyoroTextStyleExtension.withColor', () {
    const textStyle = TextStyle(color: Colors.blue);
    final newTextStyle = textStyle.withColor(Colors.pink);
    expect(textStyle != newTextStyle, isTrue);
    expect(newTextStyle.color, Colors.pink);
  });
}
