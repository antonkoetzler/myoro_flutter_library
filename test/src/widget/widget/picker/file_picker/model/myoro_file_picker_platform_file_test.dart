import 'package:faker/faker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroFilePickerPlatformFile.fromPlatformFile', () {
    MyoroFilePickerPlatformFile.fromPlatformFile(
      PlatformFile(name: faker.lorem.word(), size: faker.randomGenerator.integer(100)),
    );
  });
}
