import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroAxisExtension', () {
    expect(Axis.horizontal.isHorizontal, isTrue);
    expect(Axis.vertical.isVertical, isTrue);
  });
}
