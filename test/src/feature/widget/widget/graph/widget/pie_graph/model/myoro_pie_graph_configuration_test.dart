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

  test('MyoroPieGraphConfiguration.copyWith', () {
    final firstConfiguration = MyoroPieGraphConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroPieGraphConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        typeEnum: secondConfiguration.typeEnum,
        centerWidget: secondConfiguration.centerWidget,
        centerWidgetProvided: secondConfiguration.centerWidget != null,
        items: secondConfiguration.items,
      ),
      secondConfiguration,
    );
  });
}
