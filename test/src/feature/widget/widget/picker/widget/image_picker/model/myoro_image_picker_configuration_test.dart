import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroImagePickerConfiguration', () {
    MyoroImagePickerConfiguration(selectedImage: null, size: myoroFake<Size>(), onChanged: (_) {});
  });

  test('MyoroImagePickerConfiguration.copyWith', () {
    final firstConfiguration = MyoroImagePickerConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroImagePickerConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        selectedImage: secondConfiguration.selectedImage,
        selectedImageProvided: secondConfiguration.selectedImage != null,
        size: secondConfiguration.size,
        onChanged: secondConfiguration.onChanged,
      ),
      secondConfiguration,
    );
  });
}
