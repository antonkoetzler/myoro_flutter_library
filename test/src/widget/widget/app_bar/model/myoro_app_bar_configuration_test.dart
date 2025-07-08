import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroAppBarConfiguration', () {
    MyoroAppBarConfiguration.fake();
    const MyoroAppBarConfiguration(child: SizedBox.shrink());
  });
}
