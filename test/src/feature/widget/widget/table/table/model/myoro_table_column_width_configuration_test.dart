import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTableColumnWidthConfiguration assertion case', () {
    expect(
      () =>
          MyoroTableColumnWidthConfiguration(typeEnum: MyoroTableColumnWidthConfigurationEnum.fixed, fixedWidth: null),
      throwsAssertionError,
    );
    expect(
      () => MyoroTableColumnWidthConfiguration(
        typeEnum: MyoroTableColumnWidthConfigurationEnum.expanded,
        fixedWidth: faker.randomGenerator.decimal(),
      ),
      throwsAssertionError,
    );
    expect(
      () => MyoroTableColumnWidthConfiguration(
        typeEnum: MyoroTableColumnWidthConfigurationEnum.intrinsic,
        fixedWidth: faker.randomGenerator.decimal(),
      ),
      throwsAssertionError,
    );
  });

  test('MyoroTableColumnWidthConfiguration.copyWith', () {
    final firstConfiguration = MyoroTableColumnWidthConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroTableColumnWidthConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        typeEnum: secondConfiguration.typeEnum,
        fixedWidth: secondConfiguration.fixedWidth,
        fixedWidthProvided: secondConfiguration.fixedWidth != null,
      ),
      secondConfiguration,
    );
  });
}
