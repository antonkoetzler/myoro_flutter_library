import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroPieGraphConfiguration.fake', () {
    MyoroPieGraphConfiguration.fake();
  });

  test('MyoroPieGraphConfiguration assertion case', () {
    expect(
      () => MyoroPieGraphConfiguration(
        typeEnum: MyoroPieGraphEnum.pie,
        centerWidget: const SizedBox.shrink(),
        items: const [],
      ),
      throwsAssertionError,
    );
  });
}
