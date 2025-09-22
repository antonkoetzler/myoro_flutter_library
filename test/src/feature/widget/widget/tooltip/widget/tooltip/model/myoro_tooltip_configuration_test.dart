import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTooltipConfiguration.copyWith', () {
    final firstConfiguration = MyoroTooltipConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroTooltipConfiguration.fake();
    expect(
      firstConfiguration.copyWith(text: secondConfiguration.text, waitDuration: secondConfiguration.waitDuration),
      secondConfiguration,
    );
  });
}
