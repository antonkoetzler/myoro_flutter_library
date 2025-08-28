import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroBarGraphConfiguration.copyWith', () {
    final firstConfiguration = MyoroBarGraphConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroBarGraphConfiguration.fake();
    expect(
      firstConfiguration.copyWith(sorted: secondConfiguration.sorted, items: secondConfiguration.items),
      secondConfiguration,
    );
  });
}
