import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroBasicDividerConfiguration.copyWith', () {
    final firstConfiguration = MyoroBasicDividerConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroBasicDividerConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        direction: secondConfiguration.direction,
        shortValue: secondConfiguration.shortValue,
        shortValueProvided: secondConfiguration.shortValue != null,
        padding: secondConfiguration.padding,
        paddingProvided: secondConfiguration.padding != null,
      ),
      secondConfiguration,
    );
  });
}
