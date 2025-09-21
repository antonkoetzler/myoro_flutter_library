import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroBarGraphGroup.copyWith', () {
    final firstConfiguration = MyoroBarGraphGroup.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroBarGraphGroup.fake();
    expect(firstConfiguration.copyWith(x: secondConfiguration.x, bars: secondConfiguration.bars), secondConfiguration);
  });
}
