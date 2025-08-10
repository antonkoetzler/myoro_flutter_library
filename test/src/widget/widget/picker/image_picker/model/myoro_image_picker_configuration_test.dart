import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroImagePickerConfiguration', () {
    MyoroImagePickerConfiguration(selectedImage: null, size: myoroFake<Size>(), onChanged: (_) {});
  });
}
