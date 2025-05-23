import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final model = MyoroTableColumnWidthConfiguration.fake();

  test('MyoroTableColumnWidthConfiguration constructor assertion error', () {
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
    expect(
      () => MyoroTableColumnWidthConfiguration(
        typeEnum: MyoroTableColumnWidthConfigurationEnum.fixed,
      ),
      throwsAssertionError,
    );
  });

  test('MyoroTableColumnWidthConfiguration.copyWith', () {
    expect(model.copyWith(), model);
    final otherModel = MyoroTableColumnWidthConfiguration.fake();
    expect(
      model.copyWith(
        typeEnum: otherModel.typeEnum,
        fixedWidth: otherModel.fixedWidth,
        fixedWidthProvided: otherModel.fixedWidth != null,
      ),
      otherModel,
    );
  });

  test('MyoroTableColumnWidthConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroTableColumnWidthConfiguration(\n'
      '  typeEnum: ${model.typeEnum},\n'
      '  fixedWidth: ${model.fixedWidth},\n'
      ');',
    );
  });
}
