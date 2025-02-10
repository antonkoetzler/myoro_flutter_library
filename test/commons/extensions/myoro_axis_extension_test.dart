import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test for [MyoroAxisExtension].
void main() {
  test('MyoroAxisExtension.isHorizontal & MyoroAxisExtension.isVertical', () {
    expect(Axis.vertical.isVertical, isTrue);
    expect(Axis.horizontal.isHorizontal, isTrue);
  });
}
