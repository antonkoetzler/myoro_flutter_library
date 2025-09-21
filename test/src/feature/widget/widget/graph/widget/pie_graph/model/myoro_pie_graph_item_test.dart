import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroPieGraphItem.copyWith', () {
    final firstConfiguration = MyoroPieGraphItem.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroPieGraphItem.fake();
    expect(
      firstConfiguration.copyWith(
        value: secondConfiguration.value,
        color: secondConfiguration.color,
        colorProvided: secondConfiguration.color != null,
        radius: secondConfiguration.radius,
        radiusProvided: secondConfiguration.radius != null,
      ),
      secondConfiguration,
    );
  });
}
