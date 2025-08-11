import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroFilePickerConfiguration assertion case', () {
    expect(
      () => MyoroFilePickerConfiguration.fake().copyWith(
        fileType: MyoroFilePickerFileTypeEnum.custom,
        allowedExtensions: const [],
      ),
      throwsAssertionError,
    );
    expect(
      () => MyoroFilePickerConfiguration.fake().copyWith(
        fileType: MyoroFilePickerFileTypeEnum.any,
        allowedExtensions: [faker.lorem.word()],
      ),
      throwsAssertionError,
    );
  });
}
