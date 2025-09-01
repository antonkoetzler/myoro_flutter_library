import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTableColumn', () {
    MyoroTableColumn(
      tooltipMessage: faker.lorem.word(),
      widthConfiguration: MyoroTableColumnWidthConfiguration.fake(),
      child: const SizedBox.shrink(),
    );
  });

  test('MyoroTableColumn.copyWith', () {
    final firstConfiguration = MyoroTableColumn.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroTableColumn.fake();
    expect(
      firstConfiguration.copyWith(
        tooltipMessage: secondConfiguration.tooltipMessage,
        tooltipMessageProvided: secondConfiguration.tooltipMessage != null,
        widthConfiguration: secondConfiguration.widthConfiguration,
        child: secondConfiguration.child,
      ),
      secondConfiguration,
    );
  });
}
