import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroBarGraphBarSection.copyWith', () {
    final firstConfiguration = MyoroBarGraphBarSection.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroBarGraphBarSection.fake();
    expect(firstConfiguration.copyWith(fromY: secondConfiguration.fromY, toY: secondConfiguration.toY, color: secondConfiguration.color), secondConfiguration);
  });
}
