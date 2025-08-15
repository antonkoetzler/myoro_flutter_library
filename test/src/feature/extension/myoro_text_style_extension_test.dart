import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTextStyleExtension.withColor', () {
    const originalColor = Colors.blue;
    const newColor = Colors.green;
    const style = TextStyle(color: originalColor);
    expect(style.withColor(newColor).color, newColor);
  });
}
