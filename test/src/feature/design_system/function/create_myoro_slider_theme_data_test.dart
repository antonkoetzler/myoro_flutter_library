import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('createMyoroSliderThemeData', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final sliderTheme = createMyoroSliderThemeData(colorScheme);

    expect(sliderTheme.activeTrackColor, colorScheme.onPrimary);
    expect(sliderTheme.inactiveTrackColor, colorScheme.onPrimary.withValues(alpha: 0.5));
    expect(sliderTheme.thumbColor, colorScheme.onPrimary);
    expect(sliderTheme.overlayColor, MyoroColors.transparent);
  });
}
