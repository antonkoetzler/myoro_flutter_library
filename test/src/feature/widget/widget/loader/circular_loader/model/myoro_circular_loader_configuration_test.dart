import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroCircularLoaderConfiguration.copyWith', () {
    final firstConfiguration = MyoroCircularLoaderConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroCircularLoaderConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        color: secondConfiguration.color,
        colorProvided: secondConfiguration.color != null,
        size: secondConfiguration.size,
        sizeProvided: secondConfiguration.size != null,
      ),
      secondConfiguration,
    );
  });
}
